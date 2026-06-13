scoreboard players add @s dwn_visual_age 1

execute if score @s dwn_visual_age matches 3 run data merge entity @s {block_state:{Name:"minecraft:black_stained_glass"}}
kill @s[scores={dwn_visual_age=5..}]
