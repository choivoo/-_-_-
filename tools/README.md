# tools/ — verification against a REAL Bedrock Dedicated Server (BDS)
These are developer tools; BDS and Node modules are NOT part of the repository (Mojang EULA / size).
* `bds.py` fetch/run BDS 1.21.80.3 (Linux). Needs the IPv6 shim in sandboxes without IPv6: `gcc -shared -fPIC -o /tmp/ipv6shim.so tools/ipv6shim.c -ldl`
* `bds_check.py` loads the packs into BDS and fails on any function / entity / structure error (engine-side parser)
* `client.js` headless Bedrock client (player simulator). Setup: `mkdir /tmp/bpc && cd /tmp/bpc && npm i --ignore-scripts bedrock-protocol@3.60.1`
  and patch `node_modules/jsp-raknet/js/Client.js`: `RAKNET_PROTOCOL = 11` (BDS requires RakNet protocol 11).
* `e2e.py` end-to-end "one click" tests (TEST 01-09) with the real server + headless player
* `make_world.py` builds the shipped world headlessly in BDS and packs `.mcworld` / `.mctemplate`
* tools/patched_login.js is the patched bedrock-protocol/src/handshake/login.js (stable player identity when BP_STABLE_ID=1)
