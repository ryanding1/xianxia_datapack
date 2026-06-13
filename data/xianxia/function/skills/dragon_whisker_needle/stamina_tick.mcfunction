execute unless score @s fc_stamina matches 0.. run scoreboard players operation @s fc_stamina = #max fc_cfg
execute unless score @s fc_stam_delay matches 0.. run scoreboard players set @s fc_stam_delay 0

scoreboard players remove @s[scores={fc_stam_delay=1..}] fc_stam_delay 1
execute unless score @s fc_stam_delay matches 1.. run function xianxia:items/flying_sword/flying/stamina/refill

execute if score @s fc_stamina matches ..-1 run scoreboard players set @s fc_stamina 0
execute if score @s fc_stamina > #max fc_cfg run scoreboard players operation @s fc_stamina = #max fc_cfg

function xianxia:items/flying_sword/flying/stamina/apply_xp
