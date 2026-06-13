execute if score @s fc_stamina < #dwn_cost fc_cfg run function xianxia:skills/dragon_whisker_needle/fail
execute if score @s fc_stamina >= #dwn_cost fc_cfg run function xianxia:skills/dragon_whisker_needle/fire_commit

scoreboard players set @s dwn_charge 0
