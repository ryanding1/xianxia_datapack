scoreboard players set @s xx_post_handled 1
scoreboard players set @s xx_parry_penalty 0
scoreboard players set @s xx_parry_reset 0

execute if score @s xx_posture >= @s xx_post_max run function xianxia:posture/player/break
execute if score @s xx_posture < @s xx_post_max run function xianxia:posture/player/add_health_damage
