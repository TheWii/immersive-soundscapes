#> thewii:immersive/player/location/cave

# Cave depths
scoreboard players set #cave_depth twis.temp 0

## 63-512
execute if entity @s[y=63,dy=449] run scoreboard players set #cave_depth twis.temp 101

## 32-63
execute if score #cave_depth twis.temp matches 0 if entity @s[y=33,dy=29] run scoreboard players set #cave_depth twis.temp 102

## 0..32
execute if score #cave_depth twis.temp matches 0 if entity @s[y=0,dy=32] run scoreboard players set #cave_depth twis.temp 103

## -128..0
execute if score #cave_depth twis.temp matches 0 if entity @s[y=-128,dy=127] run scoreboard players set #cave_depth twis.temp 104

execute if score #cave_depth twis.temp matches 1.. run scoreboard players operation @s twis.preloc = #cave_depth twis.temp