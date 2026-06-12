scoreboard players operation @s xx_posture += @s xx_post_delta
execute if score @s xx_posture > @s xx_post_max run scoreboard players operation @s xx_posture = @s xx_post_max

function xianxia:posture/player/reset_decay
