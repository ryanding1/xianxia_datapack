execute unless score @s fc_id matches 1.. run return 0

scoreboard players operation #this fc_id = @s fc_id

execute as @e[type=minecraft:item_display,tag=flying_sword_sword] if score @s fc_id = #this fc_id run kill @s