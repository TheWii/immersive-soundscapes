scoreboard players operation #range vp_math = #max vp_math
scoreboard players operation #range vp_math -= #min vp_math
scoreboard players add #range vp_math 1

scoreboard players operation #lcg vp_math *= #lcg.constant vp_math
scoreboard players add #lcg vp_math 12345
scoreboard players operation #result vp_math = #lcg vp_math

scoreboard players operation #result vp_math %= #range vp_math
scoreboard players operation #result vp_math += #min vp_math