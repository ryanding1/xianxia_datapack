data modify entity @s abilities.flying set value 0b
data modify entity @s abilities.mayfly set value 0b
data modify entity @s abilities.walkSpeed set value 0.0f
data modify entity @s abilities.flySpeed set value 0.0f
tag @s remove flying_sword_active
function xianxia:posture/player/jump_lock

effect give @s minecraft:slowness 1 255 true
effect give @s minecraft:weakness 1 255 true
effect give @s minecraft:mining_fatigue 1 255 true
