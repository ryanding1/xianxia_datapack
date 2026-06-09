scoreboard players operation #this fc_id = @s fc_id

tag @e[type=minecraft:item_display,tag=flying_sword_sword] remove flying_sword_this_sword

execute as @e[type=minecraft:item_display,tag=flying_sword_sword] if score @s fc_id = #this fc_id run tag @s add flying_sword_this_sword

execute unless entity @e[type=minecraft:item_display,tag=flying_sword_sword,tag=flying_sword_this_sword,limit=1] run function xianxia:items/flying_sword/flying/visual/summon_sword

tag @e[type=minecraft:item_display,tag=flying_sword_this_sword] remove flying_sword_this_sword