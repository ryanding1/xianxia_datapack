data modify entity @s abilities.flying set value 0b
data modify entity @s abilities.mayfly set value 0b
data modify entity @s abilities.flySpeed set value 0.05f

tag @s remove flying_sword_active

function xianxia:items/flying_sword/flying/sound/cleanup
function xianxia:items/flying_sword/flying/visual/cleanup