#> thewii:immersive/uninstall

# Clear schedules
schedule clear thewii:immersive/core/tick/5
schedule clear thewii:immersive/core/tick/20

# Revoke advancements
advancement revoke @a only thewii:immersive/metal_swords
advancement revoke @a only thewii:immersive/metal_tools
advancement revoke @a only thewii:immersive/wooden_tools
advancement revoke @a only thewii:immersive/wooden_swords
advancement revoke @a only thewii:immersive/player_joined


# Remove objectives
scoreboard objectives remove twis.data

scoreboard objectives remove twis.jump

scoreboard objectives remove twis.loc
scoreboard objectives remove twis.locsw
scoreboard objectives remove twis.outside

scoreboard objectives remove twis.preloc
scoreboard objectives remove twis.trans
scoreboard objectives remove twis.pretrans

scoreboard objectives remove twis.backgr
scoreboard objectives remove twis.backgrsw

scoreboard objectives remove twis.loop
scoreboard objectives remove twis.enter

scoreboard objectives remove twis.joined

scoreboard objectives remove twis.dim
scoreboard objectives remove twis.dimsw

scoreboard objectives remove ImmerSoundscapes

scoreboard objectives remove twis.cst_id
scoreboard objectives remove twis.cst_idle
scoreboard objectives remove twis.cst_length
scoreboard objectives remove twis.cst_playing

scoreboard objectives remove twis.cfg_cst
scoreboard objectives remove twis.cfg_csttrig


# Vanilla+ Lib modules
execute if data storage thewii:immersive/data installed run function thewii:vp_library/math/remove


# Clear load version
scoreboard players reset $immersive_soundscapes thewii.load

# Clear storage
data remove storage thewii:immersive/data installed
data remove storage thewii:immersive/data version


# Uninstalled message
tellraw @a [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Immersive Soundscapes was uninstalled. Disable the datapack to complete uninstallation or /reload to reinstall it.","color":"white","bold":false}]