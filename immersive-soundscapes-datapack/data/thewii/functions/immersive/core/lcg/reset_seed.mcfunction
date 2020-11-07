#> thewii:immersive/core/lcg/reset_seed

# Summon AEC
execute at @e[limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["twis.uuid"]}

# Store UUID
execute if score $1.16 twis.data matches 1 store result score #lcg twis.data run data get entity @e[type=area_effect_cloud,tag=twis.uuid,limit=1] UUID[0]
execute if score $1.16 twis.data matches 0 store result score #lcg twis.data run data get entity @e[type=area_effect_cloud,tag=twis.uuid,limit=1] UUIDMost 0.00000000023283064365386962890625

# Kill AEC
kill @e[type=area_effect_cloud,tag=twis.uuid,limit=1]

# Invert if negative
execute if score #lcg twis.data matches ..-1 run scoreboard players operation #lcg twis.data *= #-1 twis.data