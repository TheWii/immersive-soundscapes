#> thewii:immersive/core/version

# Reset scores
scoreboard players set $version.merged twis.data 0
scoreboard players set $version.major twis.data 0
scoreboard players set $version.minor twis.data 0
scoreboard players set $version.patch twis.data 0


# Merged 010203
scoreboard players operation $version.merged twis.data = $immersive_soundscapes thewii.load

# Major 01XXXX
scoreboard players operation $version.major twis.data = $immersive_soundscapes thewii.load
scoreboard players operation $version.major twis.data /= #10000 twis.math

# Minor XX02XX
scoreboard players operation $version.minor twis.data = $immersive_soundscapes thewii.load
scoreboard players operation $version.minor twis.data /= #100 twis.math
scoreboard players operation $version.minor twis.data %= #100 twis.math

# Patch XXXX03
scoreboard players operation $version.patch twis.data = $immersive_soundscapes thewii.load
scoreboard players operation $version.patch twis.data %= #100 twis.math


# Store integers to storage
execute store result storage thewii:immersive/data version.merged int 1 run scoreboard players get $version.merged twis.data
execute store result storage thewii:immersive/data version.major int 1 run scoreboard players get $version.major twis.data
execute store result storage thewii:immersive/data version.minor int 1 run scoreboard players get $version.minor twis.data
execute store result storage thewii:immersive/data version.patch int 1 run scoreboard players get $version.patch twis.data
