scoreboard players operation @s xx_posture += @s xx_post_delta
execute if score @s xx_posture > @s xx_post_max run scoreboard players operation @s xx_posture = @s xx_post_max

scoreboard players operation @s xx_post_cd = @s xx_post_delay
