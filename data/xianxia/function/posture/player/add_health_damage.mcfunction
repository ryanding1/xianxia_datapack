scoreboard players operation @s xx_post_delta = @s xx_hp_delta
scoreboard players operation @s xx_post_delta *= #posture_health_mult xx_post_cfg
scoreboard players operation @s xx_post_delta /= #health_scale xx_post_cfg

execute if score @s xx_post_delta matches 1.. run function xianxia:posture/player/add
