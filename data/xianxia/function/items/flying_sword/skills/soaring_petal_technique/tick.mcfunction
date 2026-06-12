# Ensure this player has an ID.
execute unless score @s fc_id matches 1.. run function xianxia:items/flying_sword/flying/visual/assign_id

scoreboard players operation #this fc_id = @s fc_id

# Mark this player's thrown sword, if it exists.
scoreboard players operation #this fc_id = @s fc_id

tag @e[type=minecraft:item_display,tag=flying_sword_spt_blade] remove flying_sword_spt_this
tag @e[type=minecraft:marker,tag=flying_sword_spt_target] remove flying_sword_spt_target_this

execute as @e[type=minecraft:item_display,tag=flying_sword_spt_blade] if score @s fc_id = #this fc_id run tag @s add flying_sword_spt_this
execute as @e[type=minecraft:marker,tag=flying_sword_spt_target] if score @s fc_id = #this fc_id run tag @s add flying_sword_spt_target_this

# If this player's sword is out but the controller is gone, return/recover the sword.
execute if entity @e[type=minecraft:item_display,tag=flying_sword_spt_this,limit=1] unless items entity @s container.* minecraft:stick[custom_data~{flying_sword_controller:1b,flying_sword_controller_skill:"soaring_petal_technique"}] run function xianxia:items/flying_sword/skills/soaring_petal_technique/lost_controller

# Active thrown sword control.
execute if entity @e[type=minecraft:item_display,tag=flying_sword_spt_this,limit=1] run function xianxia:items/flying_sword/skills/soaring_petal_technique/active_tick

# Charge only if no thrown sword currently exists.
execute unless entity @e[type=minecraft:item_display,tag=flying_sword_spt_this,limit=1] run function xianxia:items/flying_sword/skills/soaring_petal_technique/charge_tick

tag @e[type=minecraft:item_display,tag=flying_sword_spt_this] remove flying_sword_spt_this
tag @e[type=minecraft:marker,tag=flying_sword_spt_target_this] remove flying_sword_spt_target_this
