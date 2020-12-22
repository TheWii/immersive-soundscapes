#> thewii:immersive/cst/register

# Reset registry
scoreboard players reset * twis.cst_id
scoreboard players set $register twis.cst_id 0

# Register vanilla soundtracks
function thewii:immersive/cst/vanilla/register

# Get min custom soundtrack ID
scoreboard players operation #min_custom_soundtrack twis.cst_id = $register twis.cst_id
scoreboard players add #min_custom_soundtrack twis.cst_id 1

# Register custom soundtracks
function #thewii:immersive/cst/register