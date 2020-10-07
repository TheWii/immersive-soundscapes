#> thewii:immersive/core/install

# Ojectives
scoreboard objectives add twis.data dummy

scoreboard objectives add twis.jump minecraft.custom:minecraft.jump

scoreboard objectives add twis.loc dummy
scoreboard objectives add twis.locsw dummy
scoreboard objectives add twis.outside dummy

scoreboard objectives add twis.preloc dummy
scoreboard objectives add twis.pretrans dummy
scoreboard objectives add twis.trans dummy

scoreboard objectives add twis.backgr dummy
scoreboard objectives add twis.backgrsw dummy

scoreboard objectives add twis.loop dummy
scoreboard objectives add twis.enter dummy

scoreboard objectives add twis.joined minecraft.custom:minecraft.leave_game

scoreboard objectives add twis.dim dummy
scoreboard objectives add twis.dimsw dummy

scoreboard objectives add twis.health dummy
scoreboard objectives add twis.heart_loop dummy

scoreboard objectives add twis.cst_id dummy
scoreboard objectives add twis.cst_idle dummy
scoreboard objectives add twis.cst_length dummy
scoreboard objectives add twis.cst_playing dummy

scoreboard objectives add ImmerSoundscapes trigger
scoreboard players set @a ImmerSoundscapes 0
scoreboard players enable @a ImmerSoundscapes

scoreboard objectives add twis.cfg_cst dummy
scoreboard objectives add twis.cfg_csttrig dummy
scoreboard players set @a twis.cfg_cst 3
scoreboard players set @a twis.cfg_csttrig 2

scoreboard players set $installed twis.data 1
scoreboard players set $soundtracks twis.data 1

scoreboard players set $min_cst_idle twis.data 480
scoreboard players set $max_cst_idle twis.data 1200


# Vanilla+ Lib modules
execute unless data storage thewii:immersive/data installed run function thewii:vp_library/math/add


# Versioning
data modify storage thewii:immersive/data installed set value 1b

function thewii:immersive/core/version


# Installed message
tellraw @a [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Immersive Soundscapes v","color":"white","bold":false},{"score":{"name":"$version.major","objective":"twis.data"},"color":"white","bold":false},{"text":".","color":"white","bold":false},{"score":{"name":"$version.minor","objective":"twis.data"},"color":"white","bold":false},{"text":".","color":"white","bold":false},{"score":{"name":"$version.patch","objective":"twis.data"},"color":"white","bold":false},{"text":" was installed!","color":"white","bold":false}]