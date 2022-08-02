# Update trigger
scoreboard players set @s ImmerSoundscapes 0
scoreboard players enable @s ImmerSoundscapes


# Reset cst system
execute unless score @s twis.cfg_cst matches 0.. run scoreboard players set @s twis.cfg_cst 3
execute unless score @s twis.cfg_csttrig matches 0.. run scoreboard players set @s twis.cfg_csttrig 2
execute unless score @s twis.cfg_jump matches 0.. run scoreboard players set @s twis.cfg_jump 1
execute unless score @s twis.cfg_heart matches 0.. run scoreboard players set @s twis.cfg_heart 1
execute unless score @s twis.cfg_swords matches 0.. run scoreboard players set @s twis.cfg_swords 1
execute unless score @s twis.cfg_tools matches 0.. run scoreboard players set @s twis.cfg_tools 1

execute if score @s twis.cfg_cst matches 2.. run scoreboard players operation @s twis.cst_idle = $min_cst_idle twis.data
execute if score @s twis.cfg_cst matches 2.. if score @s twis.cst_idle matches 60.. run scoreboard players remove @s twis.cst_idle 60

scoreboard players reset @s twis.cst_playing
scoreboard players reset @s twis.cst_id
scoreboard players reset @s twis.cst_length

tag @s add twis.setup