#> thewii:immersive/player/hit/metal_swords

# Reset triggers
advancement revoke @s only thewii:immersive/player/hit/metal_swords

# Sound
execute if score @s twis.cfg_swords matches 1 run playsound thewii:immersive.entity.player.attack.metal_sword player @s ~ ~ ~ 0.4 1