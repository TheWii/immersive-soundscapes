scoreboard objectives remove tw.is.data
scoreboard objectives remove tw.is.temp

scoreboard objectives remove tw.is.jump

scoreboard objectives remove tw.is.loc
scoreboard objectives remove tw.is.locsw
scoreboard objectives remove tw.is.outside

scoreboard objectives remove tw.is.preloc
scoreboard objectives remove tw.is.pretrans
scoreboard objectives remove tw.is.trans

scoreboard objectives remove tw.is.river
scoreboard objectives remove tw.is.riversw

scoreboard objectives remove tw.is.loop
scoreboard objectives remove tw.is.enter

scoreboard objectives remove tw.is.joined

data remove storage immersive:storage Version
data remove storage immersive:storage FirstReload

function immersive:fix

#tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Immersive Sounding updated to v","color":"white","bold":false},{"nbt":"Version","storage":"immersive:data","color":"white","bold":false},{"text":"! ","color":"white","bold":false}]