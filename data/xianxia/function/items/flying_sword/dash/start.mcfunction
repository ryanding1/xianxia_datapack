scoreboard players operation @s fc_stamina -= #dash_cost fc_cfg
scoreboard players operation @s fc_stam_delay = #stam_regen_delay fc_cfg
execute if score @s fc_stamina matches ..-1 run scoreboard players set @s fc_stamina 0
function xianxia:items/flying_sword/flying/stamina/apply_xp

scoreboard players operation @s fs_dash_cd = #dash_cooldown fc_cfg
scoreboard players operation @s fs_dash_ticks = #dash_ticks fc_cfg
scoreboard players operation @s fs_dash_invuln = #dash_invuln_ticks fc_cfg
tag @s add flying_sword_dash_invulnerable
data modify entity @s Invulnerable set value 1b

playsound minecraft:entity.breeze.jump master @s ~ ~ ~ 1.0 1.0 0
particle minecraft:poof ~ ~ ~ 0.1 1 0.1 0 15 force @a

function xianxia:items/flying_sword/dash/active_tick
