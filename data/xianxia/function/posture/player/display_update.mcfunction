execute if score @s xx_posture matches 1.. run scoreboard players set @s xx_post_idle 0
execute if score @s xx_posture matches ..0 if score @s xx_post_prev matches ..0 run scoreboard players add @s xx_post_idle 1
execute if score @s xx_posture matches ..0 if score @s xx_post_prev matches 1.. run scoreboard players set @s xx_post_idle 0

execute if score @s xx_post_idle > #display_idle_ticks xx_post_cfg run scoreboard players operation @s xx_post_idle = #display_idle_ticks xx_post_cfg
execute if score @s xx_post_idle < #display_idle_ticks xx_post_cfg run function xianxia:posture/display/tick
