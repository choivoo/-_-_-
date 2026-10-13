// Headless Bedrock client used as a "player" for end-to-end tests against a REAL Bedrock Dedicated Server.
// Usage: node client.js <port> <name> <seconds> [version]   -> JSON lines on stdout:  {t, ev, ...}
// NOTE: needs `npm i --ignore-scripts bedrock-protocol` and RakNet protocol version 11 in jsp-raknet (tools/README.md).
const bedrock = require(process.env.BP_MODULE || 'bedrock-protocol')
const port = +process.argv[2], name = process.argv[3], secs = +process.argv[4], version = process.argv[5] || '1.21.80'
const t0 = Date.now()
const out = (ev, o = {}) => console.log(JSON.stringify(Object.assign({ t: +((Date.now() - t0) / 1000).toFixed(1), ev }, o)))
const client = bedrock.createClient({ host: '127.0.0.1', port, username: name, offline: true, version, raknetBackend: 'jsp-raknet', useRaknetWorkers: false, connectTimeout: 30000, skipPing: true })
let pos = null
client.on('join', () => out('join'))
client.on('spawn', () => out('spawn'))
client.on('error', e => out('error', { msg: e.message }))
client.on('kick', k => out('kick', { reason: JSON.stringify(k).slice(0, 200) }))
client.on('close', () => out('close'))
client.on('start_game', p => { pos = p.player_position; out('start_game', { pos: p.player_position, gamemode: p.player_gamemode }) })
client.on('set_title', p => out('title', { type: p.type, text: (p.text || '').replace(/\n/g, ' ').slice(0, 200) }))
client.on('text', p => out('text', { type: p.type, msg: String(p.message).slice(0, 200) }))
client.on('camera_instruction', p => out('camera', { clear: p.clear, set: p.set ? { preset: p.set.preset, ease: p.set.ease, pos: p.set.position, rot: p.set.rotation, facing: p.set.facing } : undefined, fade: p.fade ? { time: p.fade.time, color: p.fade.color } : undefined }))
client.on('update_client_input_locks', p => out('input_locks', { locks: p.locks }))
client.on('move_player', p => { if (String(p.runtime_id) === String(client.entityId) || true) out('move', { pos: p.position, mode: p.mode }) })
client.on('respawn', p => out('respawn', { pos: p.position, state: p.state }))
client.on('set_spawn_position', p => out('spawn_pos', { type: p.spawn_type, pos: p.player_position, world: p.world_position }))
client.on('set_health', p => out('health', { hp: p.health }))
client.on('level_sound_event', p => out('sound', { id: p.sound_id, extra: p.extra_data }))
process.stdin.on('data', d => { if (String(d).includes('quit')) { out('quit'); try { client.disconnect() } catch (e) {} setTimeout(() => process.exit(0), 500) } })
setTimeout(() => { out('done'); try { client.disconnect() } catch (e) {} setTimeout(() => process.exit(0), 500) }, secs * 1000)
