scoreboard players operation @s fc_stamina -= #dash_cost fc_cfg
scoreboard players operation @s fc_stam_delay = #stam_regen_delay fc_cfg
execute if score @s fc_stamina matches ..-1 run scoreboard players set @s fc_stamina 0
function xianxia:items/flying_sword/flying/stamina/apply_xp

scoreboard players operation @s fs_dash_cd = #dash_cooldown fc_cfg
scoreboard players operation @s fs_dash_ticks = #dash_ticks fc_cfg
scoreboard players operation @s fs_dash_invuln = #dash_invuln_ticks fc_cfg
execute if score @s fs_dash_invuln matches 1.. run tag @s add flying_sword_dash_invulnerable
execute if score @s fs_dash_invuln matches 1.. run effect give @s minecraft:resistance 1 4 true
execute if score @s fs_dash_invuln matches 1.. run attribute @s minecraft:knockback_resistance base set 1.0

playsound minecraft:entity.breeze.jump master @s ~ ~ ~ 1.0 1.0 0
particle minecraft:poof ~ ~ ~ 0.1 1 0.1 0 15 force @a

execute store result storage xianxia:items/flying_sword/dash motion_distance double 0.001 run scoreboard players get #dash_motion_milli fc_cfg
function xianxia:items/flying_sword/dash/apply_motion with storage xianxia:items/flying_sword/dash
