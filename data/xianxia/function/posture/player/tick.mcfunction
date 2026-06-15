execute store result score @s xx_hp run data get entity @s Health 10
execute store result score @s xx_hurt run data get entity @s HurtTime

execute unless score @s xx_hp_seen matches 1 run function xianxia:posture/player/init
function xianxia:posture/player/death_check
execute if score @s xx_hp matches 1.. if score @s xx_hp_prev matches ..0 run function xianxia:posture/display/0
scoreboard players operation @s xx_post_max = #posture_max xx_post_cfg
scoreboard players operation @s xx_post_delay = #posture_delay xx_post_cfg

execute if score @s xx_hp matches 1.. if score @s xx_post_break matches 1.. run function xianxia:posture/player/broken_tick
execute if score @s xx_hp matches 1.. unless score @s xx_post_break matches 1.. run function xianxia:posture/player/damage_tick
execute if score @s xx_hp matches 1.. unless score @s xx_post_break matches 1.. run function xianxia:posture/player/decay_tick

function xianxia:posture/player/display_update

scoreboard players operation @s xx_hp_prev = @s xx_hp
scoreboard players operation @s xx_hurt_prev = @s xx_hurt
scoreboard players operation @s xx_post_prev = @s xx_posture
