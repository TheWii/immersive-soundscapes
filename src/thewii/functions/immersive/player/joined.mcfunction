#> thewii:immersive/player/joined

# Reset triggers
scoreboard players reset @s twis.joined
advancement grant @s only thewii:immersive/player_joined


# Update location
function thewii:immersive/check_location


# Update sound loop
scoreboard players set @s twis.loop 0

function ./setup