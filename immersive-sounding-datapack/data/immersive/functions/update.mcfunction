scoreboard objectives remove twis.river
scoreboard objectives remove twis.riversw

function immersive:fix

tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Immersive Sounding updated to v","color":"white","bold":false},{"nbt":"Version","storage":"immersive:data","color":"white","bold":false},{"text":"! ","color":"white","bold":false}]