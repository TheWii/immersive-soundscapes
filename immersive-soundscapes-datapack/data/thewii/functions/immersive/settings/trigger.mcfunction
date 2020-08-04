execute if score @s[tag=!global.ignore,tag=!global.ignore.gui] ImmerSoundscapes matches 1 at @s run function thewii:immersive/settings/display

execute if score @s[tag=!global.ignore,tag=!global.ignore.gui] ImmerSoundscapes matches 100 at @s run function thewii:immersive/settings/clicked/active_soundtracks
execute if score @s[tag=!global.ignore,tag=!global.ignore.gui] ImmerSoundscapes matches 101 at @s run function thewii:immersive/settings/clicked/custom_soundtrack_triggers

scoreboard players set @s ImmerSoundscapes 0
scoreboard players enable @s ImmerSoundscapes