data modify entity @s abilities.flying set value 0b
data modify entity @s abilities.mayfly set value 0b
data modify entity @s abilities.walkSpeed set value 0.0f
data modify entity @s abilities.flySpeed set value 0.0f
tag @s remove flying_sword_active
function xianxia:posture/player/jump_lock

scoreboard players remove @s[scores={xx_post_break=1..}] xx_post_break 1
execute unless score @s xx_post_break matches 1.. run function xianxia:posture/player/break_end
