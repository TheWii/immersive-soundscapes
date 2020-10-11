#> thewii:immersive/settings/trigger

# Display
execute if score @s ImmerSoundscapes matches 1 at @s run function thewii:immersive/settings/display

# Triggered settings
execute if score @s ImmerSoundscapes matches 100 at @s run function thewii:immersive/settings/clicked/active_soundtracks
execute if score @s ImmerSoundscapes matches 101 at @s run function thewii:immersive/settings/clicked/custom_soundtrack_triggers
execute if score @s ImmerSoundscapes matches 110 at @s run function thewii:immersive/settings/clicked/jump
execute if score @s ImmerSoundscapes matches 111 at @s run function thewii:immersive/settings/clicked/heartbeat
execute if score @s ImmerSoundscapes matches 112 at @s run function thewii:immersive/settings/clicked/sword_attack
execute if score @s ImmerSoundscapes matches 113 at @s run function thewii:immersive/settings/clicked/tool_attack

# Reset triggers
scoreboard players set @s ImmerSoundscapes 0
scoreboard players enable @s ImmerSoundscapes