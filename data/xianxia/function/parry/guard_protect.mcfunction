effect give @s minecraft:resistance 1 4 true
execute if score @s xx_guard matches 1.. run function xianxia:parry/guard_resistance_duration
function xianxia:parry/guard_knockback_start

tag @s add xianxia_parry_protected
tag @s add xianxia_parrying
