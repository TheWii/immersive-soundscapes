#> thewii:immersive/core/load2

# Datapack version
scoreboard players set $immersive_soundscapes thewii.load 020400

# Install
execute unless data storage thewii:immersive/data installed run function thewii:immersive/core/install

# Confirm if Vanilla+ Library modules are installed
execute unless data storage thewii:vp_library/data modules.math run function thewii:vp_library/math/add

# Minecraft versions
function thewii:immersive/core/check_1.16

scoreboard players operation $1.15 twis.data = $1.15 thewii.load
scoreboard players operation $1.16 twis.data = $1.16 thewii.load

# Set config


# Update
execute store result score $version.merged twis.data run data get storage thewii:immersive/data version.merged
execute if score $immersive_soundscapes thewii.load > $version.merged twis.data run function thewii:immersive/core/update

# Schedules
schedule function thewii:immersive/core/tick/20 20t replace
schedule function thewii:immersive/core/tick/5 5t replace


# Declarations
#define objective thewii.load

#define objective twvp.data
#define objective twvp.temp
#define objective twvp.math