# ADMIN ENTRY: /function bootstrap/install   (idempotent)
function bootstrap/objectives
function bootstrap/gamerules
function bootstrap/constants
execute unless score #state bce_sys matches 1.. run function bootstrap/first_install
execute if score #state bce_sys matches 1.. run function debug/status
