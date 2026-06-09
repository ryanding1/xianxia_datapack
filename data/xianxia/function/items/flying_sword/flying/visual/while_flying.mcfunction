# Give this player a unique ID if needed.
execute unless score @s fc_id matches 1.. run function xianxia:items/flying_sword/flying/visual/assign_id

# Make sure this player has a mounted sword display.
function xianxia:items/flying_sword/flying/visual/ensure_sword

# Store this player's ID for matching their sword.
scoreboard players operation #this fc_id = @s fc_id

# Keep this display alive.
execute as @e[type=minecraft:item_display,tag=flying_sword_sword] if score @s fc_id = #this fc_id run scoreboard players set @s fc_ttl 5

# Update sword facing direction.
function xianxia:items/flying_sword/flying/visual/update_sword_rotation

# Cherry leaf particles below the player.
particle minecraft:cherry_leaves ~ ~-1.15 ~ 0.35 0.05 0.35 0.01 6 force @a