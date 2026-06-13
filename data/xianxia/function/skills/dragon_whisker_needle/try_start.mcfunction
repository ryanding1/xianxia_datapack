execute if score @s dwn_cd matches 1.. run function xianxia:skills/dragon_whisker_needle/fail
execute unless score @s dwn_cd matches 1.. if score @s fc_stamina < #dwn_cost fc_cfg run function xianxia:skills/dragon_whisker_needle/fail

execute unless score @s dwn_cd matches 1.. if score @s fc_stamina >= #dwn_cost fc_cfg run scoreboard players set @s dwn_charge 0
execute unless score @s dwn_cd matches 1.. if score @s fc_stamina >= #dwn_cost fc_cfg run scoreboard players set @s dwn_shots_fired 0
execute unless score @s dwn_cd matches 1.. if score @s fc_stamina >= #dwn_cost fc_cfg run scoreboard players set @s dwn_fire_gap 0
execute unless score @s dwn_cd matches 1.. if score @s fc_stamina >= #dwn_cost fc_cfg run function xianxia:skills/dragon_whisker_needle/charge_tick
