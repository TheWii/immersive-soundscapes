advancement revoke @s only thewii:immersive/metal_swords
advancement revoke @s only thewii:immersive/metal_tools
advancement revoke @s only thewii:immersive/wooden_tools
advancement revoke @s only thewii:immersive/wooden_swords
advancement revoke @s only thewii:immersive/player_joined

scoreboard objectives remove twis.data
scoreboard objectives remove twis.temp

scoreboard objectives remove twis.jump

scoreboard objectives remove twis.loc
scoreboard objectives remove twis.locsw
scoreboard objectives remove twis.outside

scoreboard objectives remove twis.preloc
scoreboard objectives remove twis.trans
scoreboard objectives remove twis.pretrans

scoreboard objectives remove twis.backgr
scoreboard objectives remove twis.backgrsw

scoreboard objectives remove twis.loop
scoreboard objectives remove twis.enter

scoreboard objectives remove twis.joined

scoreboard objectives remove twis.dim
scoreboard objectives remove twis.dimsw

scoreboard objectives remove ImmerSoundscapes

scoreboard objectives remove twis.cst_id
scoreboard objectives remove twis.cst_idle
scoreboard objectives remove twis.cst_length
scoreboard objectives remove twis.cst_playing

scoreboard objectives remove twis.cfg_cst
scoreboard objectives remove twis.cfg_csttrig

execute if entity @s[type=player,tag=!immersive.fix] run tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] ["",{"text":"[Datapack]: ","color":"red","bold":true},{"text":"Immersive Soundscapes v","color":"white","bold":false},{"nbt":"Version","storage":"thewii:immersive/data","color":"white","bold":false},{"text":" uninstalled. Use ","color":"white","bold":false},{"text":"/function thewii:immersive/install"},{"text":" or disable the datapack/remove it from the world."}]

data remove storage thewii:immersive/data Version
data remove storage thewii:immersive/data NumericVersion
data merge storage thewii:immersive/data {FirstReload:1b,Installed:0b}