scoreboard players operation #lcg vp_math *= #lcg.constant vp_math
scoreboard players add #lcg vp_math 12345
scoreboard players operation #result vp_math = #lcg vp_math

scoreboard players operation #result vp_math %= #range vp_math
execute if score #result vp_math matches ..-1 run scoreboard players operation #result vp_math *= #-1 vp_math