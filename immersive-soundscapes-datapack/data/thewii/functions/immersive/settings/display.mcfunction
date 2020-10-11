#> thewii:immersive/settings/display

# Sound
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.8

# Top
tellraw @s [{"text":"               ","strikethrough":true,"color":"green"},{"text":" Immersive Soundscapes Settings ","color":"white","strikethrough":false,"bold":true},{"text":"               ","strikethrough":true,"color":"green"}]


# General
tellraw @s [{"text":"\n"},{"text":"General Settings","color":"white","bold":true},{"text":"\n"}]

## Jump
execute unless score @s twis.cfg_jump matches 1 run tellraw @s [{"text":"Jump: ","color":"gray","bold":false},{"text":"[OFF]","color":"red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Disabled jumping sound."}]},"clickEvent":{"action":"run_command","value":"/trigger ImmerSoundscapes set 110"}}]
execute if score @s twis.cfg_jump matches 1 run tellraw @s [{"text":"Jump: ","color":"gray","bold":false},{"text":"[ON]","color":"green","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Enabled jumping sound."}]},"clickEvent":{"action":"run_command","value":"/trigger ImmerSoundscapes set 110"}}]

## Heartbeat
execute unless score @s twis.cfg_heart matches 1 run tellraw @s [{"text":"\n"},{"text":"Heartbeat: ","color":"gray","bold":false},{"text":"[OFF]","color":"red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Disabled heartbeat sound."}]},"clickEvent":{"action":"run_command","value":"/trigger ImmerSoundscapes set 111"}}]
execute if score @s twis.cfg_heart matches 1 run tellraw @s [{"text":"\n"},{"text":"Heartbeat: ","color":"gray","bold":false},{"text":"[ON]","color":"green","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Enabled heartbeat sound."}]},"clickEvent":{"action":"run_command","value":"/trigger ImmerSoundscapes set 111"}}]

## Swords
execute unless score @s twis.cfg_swords matches 1 run tellraw @s [{"text":"\n"},{"text":"Sword attacks: ","color":"gray","bold":false},{"text":"[OFF]","color":"red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Disabled sword attack sound."}]},"clickEvent":{"action":"run_command","value":"/trigger ImmerSoundscapes set 112"}}]
execute if score @s twis.cfg_swords matches 1 run tellraw @s [{"text":"\n"},{"text":"Sword attacks: ","color":"gray","bold":false},{"text":"[ON]","color":"green","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Enabled sword attack sound."}]},"clickEvent":{"action":"run_command","value":"/trigger ImmerSoundscapes set 112"}}]

## Tools
execute unless score @s twis.cfg_tools matches 1 run tellraw @s [{"text":"\n"},{"text":"Tool attacks: ","color":"gray","bold":false},{"text":"[OFF]","color":"red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Disabled tool attack sound."}]},"clickEvent":{"action":"run_command","value":"/trigger ImmerSoundscapes set 113"}}]
execute if score @s twis.cfg_tools matches 1 run tellraw @s [{"text":"\n"},{"text":"Tool attacks: ","color":"gray","bold":false},{"text":"[ON]","color":"green","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Enabled tool attack sound."}]},"clickEvent":{"action":"run_command","value":"/trigger ImmerSoundscapes set 113"}}]


# Soundtrack Settings
tellraw @s [{"text":"\n\n"},{"text":"Soundtrack Settings","color":"white","bold":true},{"text":"\n"}]

## Active soundtracks
execute if score @s twis.cfg_cst matches 1 run tellraw @s [{"text":"Active Soundtracks: ","color":"gray","bold":false},{"text":"[None]","color":"red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"No soundtracks will be played"}]},"clickEvent":{"action":"run_command","value":"/trigger ImmerSoundscapes set 100"}}]
execute if score @s twis.cfg_cst matches 2 run tellraw @s [{"text":"Active Soundtracks: ","color":"gray","bold":false},{"text":"[Vanilla Only]","color":"white","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Only Vanilla music will be played"}]},"clickEvent":{"action":"run_command","value":"/trigger ImmerSoundscapes set 100"}}]
execute if score @s twis.cfg_cst matches 3 run tellraw @s [{"text":"Active Soundtracks: ","color":"gray","bold":false},{"text":"[Vanilla and Custom]","color":"white","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Both Vanilla music and custom soundtracks will be played"}]},"clickEvent":{"action":"run_command","value":"/trigger ImmerSoundscapes set 100"}}]
execute if score @s twis.cfg_cst matches 4 run tellraw @s [{"text":"Active Soundtracks: ","color":"gray","bold":false},{"text":"[Custom Only]","color":"white","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Only custom soundtracks will be played"}]},"clickEvent":{"action":"run_command","value":"/trigger ImmerSoundscapes set 100"}}]


tellraw @s [{"text":"\n\n"}]


tellraw @s [{"text":"                                                                                ","strikethrough":true,"color":"green"}]

