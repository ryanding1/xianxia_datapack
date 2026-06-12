# Put the target marker on the player's cursor line.
$execute rotated as @s anchored eyes positioned ^ ^ ^$(spt_dist) if block ~ ~ ~ minecraft:air as @e[type=minecraft:marker,tag=flying_sword_spt_target_this,limit=1] run tp @s ~ ~ ~

# Move the actual sword toward the target marker.
$execute as @e[type=minecraft:item_display,tag=flying_sword_spt_this,limit=1] at @s facing entity @e[type=minecraft:marker,tag=flying_sword_spt_target_this,limit=1] feet positioned ^ ^ ^$(spt_speed) if block ~ ~ ~ minecraft:air run tp @s ~ ~ ~ facing entity @e[type=minecraft:marker,tag=flying_sword_spt_target_this,limit=1] feet

# Update stored distance only if the target was valid.
$execute rotated as @s anchored eyes positioned ^ ^ ^$(spt_dist) if block ~ ~ ~ minecraft:air run scoreboard players operation @s fs_spt_dist = @s fs_spt_next