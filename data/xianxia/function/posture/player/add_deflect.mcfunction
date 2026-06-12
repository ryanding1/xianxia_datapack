function xianxia:posture/player/reset_decay

execute if score @s xx_posture < @s xx_post_max run scoreboard players operation @s xx_post_delta = #posture_deflect xx_post_cfg
execute if score @s xx_posture < @s xx_post_max run function xianxia:posture/player/add
