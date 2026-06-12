execute at @e[type=minecraft:item_display,tag=flying_sword_spt_this,limit=1] run stopsound @a[distance=..48] master minecraft:item.elytra.flying

kill @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:stick",components:{"minecraft:custom_data":{flying_sword_controller:1b,flying_sword_controller_skill:"soaring_petal_technique"}}}}]

kill @e[type=minecraft:item_display,tag=flying_sword_spt_this]
kill @e[type=minecraft:marker,tag=flying_sword_spt_target_this]

function xianxia:items/flying_sword/skills/soaring_petal_technique/restore_item

scoreboard players set @s fs_spt_charge 0
scoreboard players set @s fs_spt_state 0
scoreboard players set @s fs_spt_dist 0
scoreboard players set @s fs_spt_next 0
scoreboard players set @s fs_spt_recall_active 0
scoreboard players set @s fs_spt_recall_armed 0
scoreboard players set @s fs_spt_freeze_armed 0
