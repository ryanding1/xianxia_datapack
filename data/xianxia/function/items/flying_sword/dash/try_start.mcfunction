execute if score @s fs_dash_cd matches 1.. run function xianxia:items/flying_sword/dash/fail
execute unless score @s fs_dash_cd matches 1.. if score @s fc_stamina < #dash_cost fc_cfg run function xianxia:items/flying_sword/dash/fail
execute unless score @s fs_dash_cd matches 1.. if score @s fc_stamina >= #dash_cost fc_cfg run function xianxia:items/flying_sword/dash/start
