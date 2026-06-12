execute store result score @s xx_guard_hurt run data get entity @s HurtTime

execute if score @s xx_guard_hurt matches ..0 run scoreboard players set @s xx_guard_ready 1
execute if score @s xx_guard_hurt matches 1.. unless score @s xx_guard_ready matches 1.. run scoreboard players set @s xx_guard_ready 0
