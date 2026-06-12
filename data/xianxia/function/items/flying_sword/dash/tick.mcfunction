function xianxia:items/flying_sword/dash/invulnerability_tick

scoreboard players remove @s[scores={fs_dash_cd=1..}] fs_dash_cd 1

execute if entity @s[tag=xianxia_posture_broken] run scoreboard players set @s fs_dash_ticks 0
execute if entity @s[tag=xianxia_posture_broken] run scoreboard players set @s fs_dash_invuln 0
execute if entity @s[tag=xianxia_posture_broken,tag=flying_sword_dash_invulnerable,tag=!xianxia_parry_protected] run attribute @s minecraft:knockback_resistance base set 0.0
execute if entity @s[tag=xianxia_posture_broken,tag=flying_sword_dash_invulnerable,tag=!xianxia_parry_protected] run effect clear @s minecraft:resistance
execute if entity @s[tag=xianxia_posture_broken] run tag @s remove flying_sword_dash_invulnerable

execute unless entity @s[tag=xianxia_posture_broken] if score @s fs_dash_ticks matches 1.. run function xianxia:items/flying_sword/dash/active_tick

execute unless entity @s[tag=xianxia_posture_broken] if score @s fs_dash_buffer matches 1.. run function xianxia:items/flying_sword/dash/run_buffer

# One-tick request from swap_lock when sword form was F-swapped.
execute if score @s fs_dash_request matches 1.. run function xianxia:items/flying_sword/dash/on_swap
scoreboard players set @s fs_dash_request 0
