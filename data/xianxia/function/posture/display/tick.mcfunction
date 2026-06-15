scoreboard players operation @s xx_post_bucket = @s xx_posture
scoreboard players operation @s xx_post_bucket /= #display_step xx_post_cfg

scoreboard players add @s xx_flash 1
execute if score @s xx_flash matches 10.. run scoreboard players set @s xx_flash 0

execute if score @s xx_post_bucket matches ..0 run function xianxia:posture/display/0
execute if score @s xx_post_bucket matches 1 run function xianxia:posture/display/1
execute if score @s xx_post_bucket matches 2 run function xianxia:posture/display/2
execute if score @s xx_post_bucket matches 3 run function xianxia:posture/display/3
execute if score @s xx_post_bucket matches 4 run function xianxia:posture/display/4
execute if score @s xx_post_bucket matches 5 run function xianxia:posture/display/5
execute if score @s xx_post_bucket matches 6 run function xianxia:posture/display/6
execute if score @s xx_post_bucket matches 7 run function xianxia:posture/display/7
execute if score @s xx_post_bucket matches 8 run function xianxia:posture/display/8
execute if score @s xx_post_bucket matches 9 run function xianxia:posture/display/9
execute if score @s xx_post_bucket matches 10.. unless entity @s[tag=xianxia_posture_broken] run function xianxia:posture/display/full_0
execute if score @s xx_post_bucket matches 10.. if entity @s[tag=xianxia_posture_broken] run function xianxia:posture/display/full
