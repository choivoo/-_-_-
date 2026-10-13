# ADMIN (manual) entry. Players never need it: tick.json -> auto/tick installs & builds by itself. Idempotent.
tag @s add bce_admin
function bootstrap/objectives
function bootstrap/gamerules
function bootstrap/constants
execute unless score _astate bce_sys matches 1.. run function auto/initialize
execute if score _astate bce_sys matches 1.. run function debug/status
