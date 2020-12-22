#> thewii:immersive/core/lcg/ranged

scoreboard players operation #range twis.math = #max twis.math
scoreboard players operation #range twis.math -= #min twis.math
scoreboard players add #range twis.math 1

scoreboard players operation #lcg twis.math *= #lcg.multiplier twis.math
scoreboard players add #lcg twis.math 1623164762
scoreboard players operation #output twis.math = #lcg twis.math

scoreboard players operation #output twis.math %= #range twis.math
scoreboard players operation #output twis.math += #min twis.math