#> thewii:immersive/player/hit/wooden_swords

# Reset triggers
advancement revoke @s only thewii:immersive/player/hit/wooden_swords

# Sounds
execute if score @s twis.cfg_swords matches 1 run playsound thewii:immersive.entity.player.attack.wooden_sword player @s[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 0.3 1