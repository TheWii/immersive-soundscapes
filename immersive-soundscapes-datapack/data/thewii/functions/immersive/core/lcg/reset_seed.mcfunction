#> thewii:immersive/core/lcg/reset_seed

# Summon AEC
summon minecraft:area_effect_cloud ~ ~ ~ {UUID:[I;43, 0, 0, 1],Duration:1,Tags:["twis.uuid"]}

# Store UUID
execute if score $1.16 twis.data matches 1 store result score #lcg twis.math run data get entity 2b-0-0-0-1 UUID[0]
execute if score $1.16 twis.data matches 0 store result score #lcg twis.math run data get entity 2b-0-0-0-1 UUIDMost 0.00000000023283064365386962890625

# Kill AEC
kill 2b-0-0-0-1

# Invert if negative
execute if score #lcg twis.math matches ..-1 run scoreboard players operation #lcg twis.math *= #-1 twis.math