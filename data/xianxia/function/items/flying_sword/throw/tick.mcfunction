# Ensure this player has an ID.
execute unless score @s fc_id matches 1.. run function xianxia:items/flying_sword/flying/visual/assign_id

scoreboard players operation #this fc_id = @s fc_id

# Mark this player's thrown sword, if it exists.
scoreboard players operation #this fc_id = @s fc_id

tag @e[type=minecraft:item_display,tag=flying_sword_thrown] remove flying_sword_this
tag @e[type=minecraft:marker,tag=flying_sword_target] remove flying_sword_target_this

execute as @e[type=minecraft:item_display,tag=flying_sword_thrown] if score @s fc_id = #this fc_id run tag @s add flying_sword_this
execute as @e[type=minecraft:marker,tag=flying_sword_target] if score @s fc_id = #this fc_id run tag @s add flying_sword_target_this

# If this player's sword is out but the controller is gone, return/recover the sword.
execute if entity @e[type=minecraft:item_display,tag=flying_sword_this,limit=1] unless items entity @s container.* minecraft:stick[custom_data~{flying_sword_controller:1b}] run function xianxia:items/flying_sword/throw/lost_controller

# Active thrown sword control.
execute if entity @e[type=minecraft:item_display,tag=flying_sword_this,limit=1] run function xianxia:items/flying_sword/throw/active_tick

# Charge only if no thrown sword currently exists.
execute unless entity @e[type=minecraft:item_display,tag=flying_sword_this,limit=1] run function xianxia:items/flying_sword/throw/charge_tick

tag @e[type=minecraft:item_display,tag=flying_sword_this] remove flying_sword_this
tag @e[type=minecraft:marker,tag=flying_sword_target_this] remove flying_sword_target_this