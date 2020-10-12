#> thewii:immersive/player/hit/wooden_tools

# Reset triggers
advancement revoke @s only thewii:immersive/player/hit/wooden_tools

# Sounds
execute if score @s twis.cfg_tools matches 1 run playsound thewii:immersive.entity.player.attack.wooden_tools player @s[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 0.3 1