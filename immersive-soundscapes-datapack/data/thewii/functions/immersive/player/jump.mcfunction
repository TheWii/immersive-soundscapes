#> thewii:immersive/player/jump

# Reset triggers
scoreboard players reset @s twis.jump

# Sound
execute if score @s twis.cfg_jump matches 1 at @s run playsound thewii:immersive.entity.player.jump player @s ~ ~ ~ 0.4 1