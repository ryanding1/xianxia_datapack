# Start fly-through damage cleanup window.
function xianxia:items/flying_sword/flying/fly_through_damage/cleanup_start

# Thrown sword TTL cleanup.
scoreboard players remove @e[type=minecraft:item_display,tag=flying_sword_thrown] fc_ttl 1
kill @e[type=minecraft:item_display,tag=flying_sword_thrown,scores={fc_ttl=..0}]

# Determine who actually has the ride item.
tag @a remove flying_sword_has_ride_item
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function xianxia:items/flying_sword/inventory/update_has_ride_item

# If the player was flying on the sword but now only has the controller, disable ride flight.
execute as @a[tag=flying_sword_active,tag=!flying_sword_has_ride_item,gamemode=!creative,gamemode=!spectator] at @s run function xianxia:items/flying_sword/disable_flight_only

# Creative/spectator safety.
execute as @a[tag=flying_sword_active,gamemode=creative] run tag @s remove flying_sword_active
execute as @a[tag=flying_sword_active,gamemode=spectator] run tag @s remove flying_sword_active

# Normal flying sword ride logic only if the sword/feather is actually with the player.
execute as @a[tag=flying_sword_has_ride_item,gamemode=!creative,gamemode=!spectator] at @s run function xianxia:items/flying_sword/while_holding

# End fly-through damage cleanup window.
function xianxia:items/flying_sword/flying/fly_through_damage/cleanup_end

# Thrown sword / parry / input logic.
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function xianxia:items/flying_sword/input/sneak_tick
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function xianxia:items/flying_sword/throw/tick
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function xianxia:items/flying_sword/parry/tick
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function xianxia:items/flying_sword/input/tick_end

tag @a remove flying_sword_has_ride_item