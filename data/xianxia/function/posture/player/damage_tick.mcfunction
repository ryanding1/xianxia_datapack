scoreboard players operation @s xx_hp_delta = @s xx_hp_prev
scoreboard players operation @s xx_hp_delta -= @s xx_hp

execute if score @s xx_hp_delta matches 1.. run function xianxia:posture/player/on_health_damage
execute unless score @s xx_hp_delta matches 1.. if score @s xx_guard_ready matches 1.. if score @s xx_guard matches 1.. if score @s xx_hurt > @s xx_hurt_prev run function xianxia:posture/player/on_guarded_hit
