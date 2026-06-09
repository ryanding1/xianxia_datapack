# Mark already-damaged entities that are still inside the sword's radius.
# This prevents their fly_thru_dmg tag from being removed while they remain near the sword.

$execute at @e[type=minecraft:item_display,tag=flying_sword_damage_source,limit=1] positioned ~ ~$(fly_thru_y_offset) ~ run tag @e[distance=..$(fly_thru_radius),tag=fly_thru_dmg] add fly_thru_dmg_in_range


# Damage new valid targets.
# Current broad filter:
# - excludes the owner
# - excludes technical/visual entities
# Later, replace this selector with tag=enemy or team=enemy.

$execute at @e[type=minecraft:item_display,tag=flying_sword_damage_source,limit=1] positioned ~ ~$(fly_thru_y_offset) ~ as @e[distance=..$(fly_thru_radius),tag=!fly_thru_dmg,tag=!flying_sword_fly_dmg_owner,type=!minecraft:item_display,type=!minecraft:marker,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:area_effect_cloud] at @s run function xianxia:items/flying_sword/flying/fly_through_damage/hit_macro with storage xianxia:items/flying_sword/config