#> thewii:immersive/core/lcg/ranged

scoreboard players operation #range twis.temp = #max twis.temp
scoreboard players operation #range twis.temp -= #min twis.temp
scoreboard players add #range twis.data 1

scoreboard players operation #lcg twis.data *= #lcg.constant twis.data
scoreboard players add #lcg twis.data 12345
scoreboard players operation #output twis.temp = #lcg twis.data

scoreboard players operation #output twis.temp %= #range twis.temp
scoreboard players operation #output twis.temp += #min twis.temp