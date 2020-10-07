#> thewii:immersive/player/heartbeat/loop

# Increase
scoreboard players remove @s twis.heart_loop 1

# Heartbeating speeds
execute if score @s twis.health matches 15.. run scoreboard players set #heartbeat_speed twvp.temp 0
execute if score @s twis.health matches 11..14 run scoreboard players set #heartbeat_speed twvp.temp 40
execute if score @s twis.health matches 6..10 run scoreboard players set #heartbeat_speed twvp.temp 27
execute if score @s twis.health matches 0..5 run scoreboard players set #heartbeat_speed twvp.temp 18

# Reset loop
execute if score @s twis.heart_loop matches 0 run scoreboard players operation @s twis.heart_loop = #heartbeat_speed twvp.temp

# Sound
execute if score #heartbeat_speed twvp.temp matches 40 if score @s twis.heart_loop = #heartbeat_speed twvp.temp at @s run playsound thewii:immersive.entity.player.heartbeat_slow player @s ~ ~ ~ 0.125 1
execute if score #heartbeat_speed twvp.temp matches 27 if score @s twis.heart_loop = #heartbeat_speed twvp.temp at @s run playsound thewii:immersive.entity.player.heartbeat_medium player @s ~ ~ ~ 0.125 1
execute if score #heartbeat_speed twvp.temp matches 18 if score @s twis.heart_loop = #heartbeat_speed twvp.temp at @s run playsound thewii:immersive.entity.player.heartbeat_fast player @s ~ ~ ~ 0.125 1

