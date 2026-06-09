# Remove expired fly-through damage tags.
execute as @e[tag=fly_thru_dmg,scores={fs_fly_dmg_ttl=..0}] run function xianxia:items/flying_sword/flying/fly_through_damage/clear_target

# Remove the tag early from entities that left the damage radius.
execute as @e[tag=fly_thru_dmg,tag=!fly_thru_dmg_in_range] run function xianxia:items/flying_sword/flying/fly_through_damage/clear_target

# Clean temp range marker.
tag @e[tag=fly_thru_dmg_in_range] remove fly_thru_dmg_in_range