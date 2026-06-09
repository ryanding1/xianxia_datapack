execute store result storage xianxia:items/flying_sword/temp points int 1 run scoreboard players get @s fc_stamina
data modify storage xianxia:items/flying_sword/temp level set from storage xianxia:items/flying_sword/config xp_level

function xianxia:items/flying_sword/stamina/apply_xp_macro with storage xianxia:items/flying_sword/temp