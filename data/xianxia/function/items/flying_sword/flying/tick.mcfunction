# Fly-through damage cleanup starts before any active flying swords process damage.
function xianxia:items/flying_sword/flying/fly_through_damage/cleanup_start

# Determine who actually has the ride item.
tag @a remove flying_sword_has_ride_item
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function xianxia:items/flying_sword/inventory/update_has_ride_item

# If the player was flying but no longer has sword/feather mode, disable ride flight.
execute as @a[tag=flying_sword_active,tag=!flying_sword_has_ride_item,gamemode=!creative,gamemode=!spectator] at @s run function xianxia:items/flying_sword/flying/disable_flight_only

# Creative/spectator safety.
execute as @a[tag=flying_sword_active,gamemode=creative] run tag @s remove flying_sword_active
execute as @a[tag=flying_sword_active,gamemode=spectator] run tag @s remove flying_sword_active

# Main flying mode logic.
execute as @a[tag=flying_sword_has_ride_item,gamemode=!creative,gamemode=!spectator] at @s run function xianxia:items/flying_sword/flying/while_has_item

# Finish fly-through damage cleanup after all active flying swords have marked nearby targets.
function xianxia:items/flying_sword/flying/fly_through_damage/cleanup_end

tag @a remove flying_sword_has_ride_item