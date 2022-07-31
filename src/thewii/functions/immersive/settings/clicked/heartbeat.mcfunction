#> thewii:immersive/settings/clicked/heartbeat

# Switch
execute store success score @s twis.cfg_heart if score @s twis.cfg_heart matches 0

execute if score @s twis.cfg_heart matches 1 run scoreboard players set @s twis.heart_loop 0
execute if score @s twis.cfg_heart matches 1 run execute store result score @s twis.health run data get entity @s Health

# Display menu
function thewii:immersive/settings/display