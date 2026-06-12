scoreboard players add @s xx_guard 0
execute if score @s xx_guard < #guard_hold_ticks xx_parry_cfg run scoreboard players operation @s xx_guard = #guard_hold_ticks xx_parry_cfg
