execute if score @s[tag=!global.ignore,tag=!global.ignore.gui] ImmerSounding matches 1 at @s run function thewii:immersive/settings/display

execute if score @s[tag=!global.ignore,tag=!global.ignore.gui] ImmerSounding matches 100 at @s run function thewii:immersive/settings/clicked/active_soundtracks
execute if score @s[tag=!global.ignore,tag=!global.ignore.gui] ImmerSounding matches 101 at @s run function thewii:immersive/settings/clicked/custom_soundtrack_triggers

scoreboard players set @s ImmerSounding 0
scoreboard players enable @s ImmerSounding