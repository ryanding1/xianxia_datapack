execute if entity @s[tag=xianxia_posture_broken] run scoreboard players set @s fs_dash_buffer 1
execute if entity @s[tag=xianxia_posture_broken] run scoreboard players operation @s fs_dash_buf_dir = @s fs_dash_dir

execute unless entity @s[tag=xianxia_posture_broken] if score @s fs_dash_cd matches 1.. run function xianxia:items/flying_sword/dash/fail
execute unless entity @s[tag=xianxia_posture_broken] unless score @s fs_dash_cd matches 1.. if score @s fc_stamina < #dash_cost fc_cfg run function xianxia:items/flying_sword/dash/fail
execute unless entity @s[tag=xianxia_posture_broken] unless score @s fs_dash_cd matches 1.. if score @s fc_stamina >= #dash_cost fc_cfg run function xianxia:items/flying_sword/dash/start
