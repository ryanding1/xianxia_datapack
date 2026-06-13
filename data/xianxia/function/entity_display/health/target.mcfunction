scoreboard players set @s xx_hud_hp 0
execute store result score @s xx_hud_hp run data get entity @s Health 1000
execute unless score @s xx_hud_hp matches 1.. run return 0
scoreboard players add @s xx_hud_hp 999
scoreboard players operation @s xx_hud_hp /= #health_scale xx_hud_hp

execute unless score @s xx_hud_id matches 1.. run function xianxia:entity_display/assign_id
function xianxia:entity_display/health/ensure
