#> thewii:immersive/player/heartbeat/loop

# Increase
scoreboard players remove @s twis.heart_loop 1

# Heartbeating speeds
execute if score @s twis.health matches 15.. run scoreboard players set #heartbeat_speed twis.temp 0
execute if score @s twis.health matches 11..14 run scoreboard players set #heartbeat_speed twis.temp 20
execute if score @s twis.health matches 6..10 run scoreboard players set #heartbeat_speed twis.temp 14
execute if score @s twis.health matches 0..5 run scoreboard players set #heartbeat_speed twis.temp 9

# Reset loop
execute if score @s twis.heart_loop matches 0 run scoreboard players operation @s twis.heart_loop = #heartbeat_speed twis.temp

# Sound
execute if score #heartbeat_speed twis.temp matches 20 if score @s twis.heart_loop = #heartbeat_speed twis.temp at @s run playsound thewii:immersive.entity.player.heartbeat_slow player @s ~ ~ ~ 0.125 1
execute if score #heartbeat_speed twis.temp matches 14 if score @s twis.heart_loop = #heartbeat_speed twis.temp at @s run playsound thewii:immersive.entity.player.heartbeat_medium player @s ~ ~ ~ 0.125 1
execute if score #heartbeat_speed twis.temp matches 9 if score @s twis.heart_loop = #heartbeat_speed twis.temp at @s run playsound thewii:immersive.entity.player.heartbeat_fast player @s ~ ~ ~ 0.125 1

