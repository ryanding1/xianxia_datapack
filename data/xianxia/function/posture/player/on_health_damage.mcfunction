scoreboard players set @s xx_post_handled 0
scoreboard players set @s xx_parry_penalty 0
scoreboard players set @s xx_parry_reset 0

execute if score @s xx_post_handled matches 0 if score @s xx_guard_ready matches 1.. if score @s xx_deflect matches 1.. if score @s xx_guard matches 1.. run function xianxia:posture/player/on_deflect_damage
execute if score @s xx_post_handled matches 0 if score @s xx_guard_ready matches 1.. if score @s xx_guard matches 1.. run function xianxia:posture/player/on_block_damage
execute if score @s xx_post_handled matches 0 run function xianxia:posture/player/on_regular_damage
