scoreboard players remove @s xx_posture 1
execute if score @s xx_posture matches ..-1 run scoreboard players set @s xx_posture 0
scoreboard players operation @s xx_post_decay = @s xx_post_delta
