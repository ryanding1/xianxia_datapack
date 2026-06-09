execute if entity @s[tag=flying_sword_was_airborne] run function xianxia:items/flying_sword/flying/sound/end_air

data modify entity @s abilities.flying set value 0b
data modify entity @s abilities.mayfly set value 0b
data modify entity @s abilities.flySpeed set value 0.05f

tag @s remove flying_sword_active
function xianxia:items/flying_sword/flying/visual/cleanup

function xianxia:items/flying_sword/inventory/to_sword

execute if entity @s[tag=flying_sword_parrying] run function xianxia:items/flying_sword/parry/end with storage xianxia:items/flying_sword/config
function xianxia:items/flying_sword/throw/force_cleanup