# Store this player's ID for matching their own sword.
scoreboard players operation #this fc_id = @s fc_id

# Read player's yaw.
# Entity Rotation order is [yaw, pitch].
execute store result score #yaw fc_calc run data get entity @s Rotation[0] 1000

# Add constant sword yaw offset.
scoreboard players operation #yaw fc_calc += #sword_yaw_offset fc_calc

# Copy yaw to this player's mounted sword.
execute as @e[type=minecraft:item_display,tag=flying_sword_sword] if score @s fc_id = #this fc_id store result entity @s Rotation[0] float 0.001 run scoreboard players get #yaw fc_calc

# Keep display entity pitch level.
execute as @e[type=minecraft:item_display,tag=flying_sword_sword] if score @s fc_id = #this fc_id run data modify entity @s Rotation[1] set value 0f