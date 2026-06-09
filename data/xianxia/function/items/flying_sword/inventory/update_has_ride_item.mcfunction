tag @s remove flying_sword_has_ride_item

# Only sword mode and feather mode count as the ride item.
# The warped fungus controller does NOT count.
execute if items entity @s container.* minecraft:diamond_sword[custom_data~{flying_sword:1b}] run tag @s add flying_sword_has_ride_item
execute if items entity @s container.* minecraft:feather[custom_data~{flying_sword:1b}] run tag @s add flying_sword_has_ride_item