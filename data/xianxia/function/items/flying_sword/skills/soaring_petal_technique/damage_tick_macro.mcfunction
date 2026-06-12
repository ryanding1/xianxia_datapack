# Current broad filter:
# - excludes owner
# - excludes common non-combat entities
# Later you can replace this with tag=enemy.

$execute as @e[distance=..$(spt_damage_radius),tag=!flying_sword_spt_owner_this,type=!minecraft:item_display,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:area_effect_cloud] at @s run function xianxia:items/flying_sword/skills/soaring_petal_technique/on_hit with storage xianxia:items/flying_sword/skills/soaring_petal_technique/config
