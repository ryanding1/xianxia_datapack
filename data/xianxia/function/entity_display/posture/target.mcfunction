scoreboard players set @s xx_hud_hp 0
execute store result score @s xx_hud_hp run data get entity @s Health 1000
execute unless score @s xx_hud_hp matches 1.. run return 0

execute unless score @s xx_post_max matches 1.. run scoreboard players operation @s xx_post_max = #posture_max xx_post_cfg
execute unless score @s xx_posture matches 0.. run scoreboard players set @s xx_posture 0
execute if score @s xx_posture > @s xx_post_max run scoreboard players operation @s xx_posture = @s xx_post_max

execute unless score @s xx_hud_id matches 1.. run function xianxia:entity_display/assign_id
function xianxia:entity_display/posture/ensure
