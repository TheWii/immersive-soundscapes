# Minimum idle time to start a new track / Decrease 1 every second if idle is bigger than 1
execute if score @s twis.cst_idle matches 0.. if score @s twis.cst_playing matches 0.. run scoreboard players reset @s twis.cst_idle
execute unless score @s twis.cst_idle matches 0.. unless score @s twis.cst_playing matches 0.. run scoreboard players set @s twis.cst_idle 0
execute if score @s twis.cst_idle matches 0.. run scoreboard players add @s twis.cst_idle 1

# If idle > minimum = 0.1% chance to play a track / If idle >= maximum = instantly play a track
execute if score @s twis.cst_idle >= $min_cst_idle twis.data if score @s twis.cst_idle < $max_cst_idle twis.data unless score @s twis.cst_playing matches 0.. if predicate thewii:immersive/cst/play_chance run function thewii:immersive/cst/check
execute if score @s twis.cst_idle >= $max_cst_idle twis.data unless score @s twis.cst_playing matches 0.. run function thewii:immersive/cst/check

# Instant check (Dragon Battle)
execute unless score @s twis.cst_playing matches 0.. if predicate thewii:immersive/dimension/in_end if entity @e[type=minecraft:ender_dragon] run function thewii:immersive/cst/check

# Increase playing by 1 every second /  End soundtrack and reset idle if playing score >= length score
execute if score @s twis.cst_playing matches 0.. if score @s twis.cst_playing >= @s twis.cst_length run function thewii:immersive/cst/ended
execute if score @s twis.cst_playing matches 0.. if score @s twis.cst_playing < @s twis.cst_length run scoreboard players add @s twis.cst_playing 1

# Game (In overworld)
# Creative (Players in creative and in the overworld)
# Underwater (If underwater in Rivers or Oceans)
# Nether (In nether)
# End (In end)
# Dragon (If dragon isn't defeated)

# Menu (Not handled by datapack)
# Credits (Not handled by datapack)