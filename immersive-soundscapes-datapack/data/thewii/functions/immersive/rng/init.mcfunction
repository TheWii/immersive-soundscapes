scoreboard objectives add vp_math dummy

scoreboard players set #-1 vp_math -1
scoreboard players set #lcg.constant vp_math 1103515245

execute unless score #lcg vp_math matches -2146473648.. run function thewii:immersive/rng/uuid_reset