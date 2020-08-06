execute unless entity @s[tag=!global.ignore] run function thewii:immersive/check_location

scoreboard players set @s twis.loop 0

scoreboard players set @a ImmerSoundscapes 0
scoreboard players enable @a[tag=!global.ignore] ImmerSoundscapes

execute unless score @s twis.cfg_cst matches 1.. run scoreboard players set @s twis.cfg_cst 3
execute unless score @s twis.cfg_csttrig matches 1.. run scoreboard players set @a twis.cfg_csttrig 2

execute if score @s twis.cfg_cst matches 2.. run scoreboard players operation @s twis.cst_idle = $min_cst_idle twis.data
execute if score @s twis.cfg_cst matches 2.. if score @s twis.cst_idle matches 60.. run scoreboard players remove @s twis.cst_idle 60

scoreboard players reset @s twis.cst_playing
scoreboard players reset @s twis.cst_id
scoreboard players reset @s twis.cst_length

execute if score $installed twis.data matches 1 run tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Immersive Soundscapes v","color":"white","bold":false},{"nbt":"Version","storage":"thewii:immersive/data","color":"white","bold":false},{"text":" is loaded! ","color":"white","bold":false},{"translate":"(Seems like you aren't using the resource pack for Immersive Soundscapes v2.3! Click here to download.)","color":"red","bold":false,"clickEvent":{"action":"open_url","value":"https://github.com/TheWii/immersive-soundscapes/releases/latest"}}]

scoreboard players reset @s twis.joined
advancement grant @s only thewii:immersive/player_joined