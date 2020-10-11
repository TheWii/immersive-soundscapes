#> thewii:immersive/player/hit/metal_tools

# Reset triggers
advancement revoke @s only thewii:immersive/metal_tools

# Sounds
execute if score @s twis.cfg_tools matches 1 run playsound thewii:immersive.entity.player.attack.metal_tools player @s[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 0.7 1