// LD_PRELOAD shim for sandboxes without IPv6: turns AF_INET6 UDP/TCP sockets into AF_INET ones so bedrock_server can start.
#define _GNU_SOURCE
#include <dlfcn.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <errno.h>
static unsigned char fake6[65536];
int socket(int domain, int type, int protocol) {
    int (*real)(int, int, int) = dlsym(RTLD_NEXT, "socket");
    if (domain == AF_INET6) {
        int fd = real(AF_INET, type, protocol);
        if (fd >= 0 && fd < 65536) fake6[fd] = 1;
        return fd;
    }
    return real(domain, type, protocol);
}
int bind(int fd, const struct sockaddr *addr, socklen_t len) {
    int (*real)(int, const struct sockaddr *, socklen_t) = dlsym(RTLD_NEXT, "bind");
    if (fd >= 0 && fd < 65536 && fake6[fd] && addr->sa_family == AF_INET6) {
        const struct sockaddr_in6 *a6 = (const struct sockaddr_in6 *)addr;
        struct sockaddr_in a4; memset(&a4, 0, sizeof a4);
        a4.sin_family = AF_INET; a4.sin_port = a6->sin6_port; a4.sin_addr.s_addr = htonl(INADDR_ANY);
        return real(fd, (struct sockaddr *)&a4, sizeof a4);
    }
    return real(fd, addr, len);
}
int setsockopt(int fd, int level, int optname, const void *optval, socklen_t optlen) {
    int (*real)(int, int, int, const void *, socklen_t) = dlsym(RTLD_NEXT, "setsockopt");
    if (fd >= 0 && fd < 65536 && fake6[fd] && level == IPPROTO_IPV6) return 0;
    return real(fd, level, optname, optval, optlen);
}
