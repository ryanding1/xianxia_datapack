# Stamina may not exist if this is the first sword action after /reload.
execute unless score @s fc_stamina matches 0.. run scoreboard players operation @s fc_stamina = #max fc_cfg

function xianxia:items/flying_sword/dash/try_start
