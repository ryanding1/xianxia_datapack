scoreboard players operation @s xx_posture = @s xx_post_max

function xianxia:posture/player/break_lock_tick

scoreboard players remove @s[scores={xx_post_break=1..}] xx_post_break 1
execute unless score @s xx_post_break matches 1.. run function xianxia:posture/player/break_end
