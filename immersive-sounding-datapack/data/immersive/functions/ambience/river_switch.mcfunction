#execute if score @s twis.trans matches 11 run scoreboard players set @s twis.loop 0

execute if score @s twis.trans matches 11 if score @s twis.river matches 1 run playsound immersive:ambient.surface.river.loop ambient @s ~ ~ ~ 0.6 1

execute if score @s twis.trans matches 11 if score @s twis.riversw matches 1 run playsound immersive:ambient.surface.river.fadeout ambient @s ~ ~ ~ 0.6 1
execute if score @s twis.trans matches 14 if score @s twis.riversw matches 1 run stopsound @s ambient immersive:ambient.surface.river.loop

execute if score @s twis.trans matches 14 run scoreboard players operation @s twis.riversw = @s twis.river

scoreboard players add @s twis.trans 1

scoreboard players reset @s[scores={twis.trans=15..20}] twis.trans