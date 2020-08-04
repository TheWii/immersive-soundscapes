scoreboard objectives remove twis.river
scoreboard objectives remove twis.riversw

function thewii:immersive/fix

tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Immersive Soundscapes updated to v","color":"white","bold":false},{"nbt":"Version","storage":"thewii:immersive/data","color":"white","bold":false},{"text":"! ","color":"white","bold":false}]