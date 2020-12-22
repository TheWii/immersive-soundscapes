# Add the common objective to be used for version resolution.
scoreboard objectives add thewii.load dummy

# Reset all scores on this objective to allow for version resolution on reload.
scoreboard players reset * thewii.load

# Call a nonexistent function to allow for this data pack to be extended later.
function thewii:load/__init2
