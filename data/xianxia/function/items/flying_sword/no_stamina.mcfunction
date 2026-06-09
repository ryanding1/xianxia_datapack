execute if entity @s[tag=flying_sword_was_airborne] run function xianxia:items/flying_sword/sound/end_air

data modify entity @s abilities.flying set value 0b
data modify entity @s abilities.mayfly set value 0b
data modify entity @s abilities.flySpeed set value 0.05f

tag @s remove flying_sword_active
function xianxia:items/flying_sword/visual/cleanup

# feather turns back into a sword when stamina runs out
function xianxia:items/flying_sword/inventory/to_sword
function xianxia:items/flying_sword/throw/force_cleanup