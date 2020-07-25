scoreboard players set @s twis.loop 0

execute if score @s twis.cfg_cst matches 2.. run scoreboard players operation @s twis.cst_idle = $min_cst_idle twis.data
execute if score @s twis.cfg_cst matches 2.. if score @s twis.cst_idle matches 120.. run scoreboard players remove @s twis.cst_idle 120

scoreboard players reset @s twis.cst_playing
scoreboard players reset @s twis.cst_id
scoreboard players reset @s twis.cst_length

scoreboard players operation @s twis.dimsw = @s twis.dim