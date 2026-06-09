# @s = flying player

tag @s add flying_sword_fly_dmg_owner

scoreboard players operation #this fc_id = @s fc_id

# Find this player's mounted flying sword display.
tag @e[type=minecraft:item_display,tag=flying_sword_sword] remove flying_sword_damage_source
execute as @e[type=minecraft:item_display,tag=flying_sword_sword] if score @s fc_id = #this fc_id run tag @s add flying_sword_damage_source

# Process damage around the sword.
execute if entity @e[type=minecraft:item_display,tag=flying_sword_damage_source,limit=1] run function xianxia:items/flying_sword/flying/fly_through_damage/source_at_sword_macro with storage xianxia:items/flying_sword/config

tag @e[type=minecraft:item_display,tag=flying_sword_damage_source] remove flying_sword_damage_source

tag @s remove flying_sword_fly_dmg_owner