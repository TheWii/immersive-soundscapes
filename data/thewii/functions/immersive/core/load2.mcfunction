#> thewii:immersive/core/load2

# Datapack version
major, minor, patch = map(int, ctx.project_version.split("."))
int_version = major*10000 + minor*100 + patch
scoreboard players set $immersive_soundscapes thewii.load int_version

# Install

## Objectives
scoreboard objectives add twis.data dummy
scoreboard objectives add twis.temp dummy
scoreboard objectives add twis.math dummy

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

scoreboard objectives add twis.health health
scoreboard objectives add twis.heart_loop dummy

scoreboard objectives add twis.cst_id dummy
scoreboard objectives add twis.cst_idle dummy
scoreboard objectives add twis.cst_length dummy
scoreboard objectives add twis.cst_playing dummy

scoreboard objectives add ImmerSoundscapes trigger
scoreboard players set @a ImmerSoundscapes 0
scoreboard players enable @a ImmerSoundscapes

scoreboard objectives add twis.cfg_cst dummy

scoreboard objectives add twis.cfg_jump dummy
scoreboard objectives add twis.cfg_heart dummy
scoreboard objectives add twis.cfg_swords dummy
scoreboard objectives add twis.cfg_tools dummy


## Configs
execute as @a unless score @s twis.cfg_cst matches 0.. run scoreboard players set @s twis.cfg_cst 3
execute as @a unless score @s twis.cfg_csttrig matches 0.. run scoreboard players set @s twis.cfg_csttrig 2
execute as @a unless score @s twis.cfg_jump matches 0.. run scoreboard players set @s twis.cfg_jump 1
execute as @a unless score @s twis.cfg_heart matches 0.. run scoreboard players set @s twis.cfg_heart 1
execute as @a unless score @s twis.cfg_swords matches 0.. run scoreboard players set @s twis.cfg_swords 1
execute as @a unless score @s twis.cfg_tools matches 0.. run scoreboard players set @s twis.cfg_tools 1

execute unless score $soundtracks twis.data matches 0.. run scoreboard players set $soundtracks twis.data 1

execute unless score $min_cst_idle twis.data matches 0.. run scoreboard players set $min_cst_idle twis.data 480
execute unless score $max_cst_idle twis.data matches 0.. run scoreboard players set $max_cst_idle twis.data 1200


## Math
scoreboard players set #-1 twis.math -1
scoreboard players set #lcg.multiplier twis.math 1630111353

execute unless score #lcg twis.math matches 0.. run function thewii:immersive/core/lcg/reset_seed



# Update
execute store result score $version.merged twis.data run data get storage thewii:immersive/data version.merged
execute if score $version.merged twis.data matches 1.. if score $immersive_soundscapes thewii.load > $version.merged twis.data run function thewii:immersive/core/update


# Version
function thewii:immersive/core/version

# Minecraft versions
function thewii:immersive/core/check_1.16

scoreboard players set $1.15 twis.data 1
scoreboard players operation $1.16 twis.data = $1.16 thewii.load


# Soundtrack registry
execute if score $soundtracks twis.data matches 1 run function thewii:immersive/cst/register


# Schedules
schedule function thewii:immersive/core/tick/20 20t replace
schedule function thewii:immersive/core/tick/5 5t replace
schedule function thewii:immersive/core/tick/2 2t replace


# Debug
tellraw @a[tag=twis.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Immersive Soundscapes v","color":"white","bold":false},{"score":{"name":"$version.major","objective":"twis.data"},"color":"white","bold":false},{"text":".","color":"white","bold":false},{"score":{"name":"$version.minor","objective":"twis.data"},"color":"white","bold":false},{"text":".","color":"white","bold":false},{"score":{"name":"$version.patch","objective":"twis.data"},"color":"white","bold":false},{"text":" is loaded.","color":"white","bold":false}]


advancement thewii:immersive/core/immersive-soundscapes:
    display:
        title: [
            {"text":f"[v{ctx.project_version}] ","color":"dark_green"},
            {"text":"Immersive Soundscapes","color":"green"}
        ]
        description: [
            {"text":"Athmospheric sound generator.","color":"white"},
            {"translate":"\n\n[twis] Resource Pack is missing.","color":"red"}
        ]
        icon:
            item: "minecraft:music_disc_cat"
        announce_to_chat: false
        show_toast: false
    parent: "global:thewii"
    criteria:
        trigger:
            trigger: "minecraft:tick"

# Declarations
#define objective thewii.load