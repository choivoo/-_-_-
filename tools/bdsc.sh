#!/bin/sh
# send one console command to the BDS daemon and print what the server answered
n=$(wc -l < /tmp/bds.log)
printf '%s\n' "$1" > /tmp/bds.in
sleep "${2:-1.2}"
tail -n +$((n+1)) /tmp/bds.log
