execute store result storage xianxia:items/flying_sword/dash step double 0.001 run scoreboard players get #dash_step_milli fc_cfg

execute if score @s fs_dash_dir matches 1 run function xianxia:items/flying_sword/dash/step_forward with storage xianxia:items/flying_sword/dash
execute if score @s fs_dash_dir matches 2 run function xianxia:items/flying_sword/dash/step_backward with storage xianxia:items/flying_sword/dash

scoreboard players remove @s[scores={fs_dash_ticks=1..}] fs_dash_ticks 1
execute unless score @s fs_dash_ticks matches 1.. run scoreboard players set @s fs_dash_ticks 0
