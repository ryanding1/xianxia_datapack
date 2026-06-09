execute at @e[type=minecraft:item_display,tag=flying_sword_this,limit=1] run stopsound @a[distance=..48] master minecraft:item.elytra.flying

kill @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:stick",components:{"minecraft:custom_data":{flying_sword_controller:1b}}}}]

kill @e[type=minecraft:item_display,tag=flying_sword_this]
kill @e[type=minecraft:marker,tag=flying_sword_target_this]

function xianxia:items/flying_sword/throw/restore_item

scoreboard players set @s fs_throw_charge 0
scoreboard players set @s fs_throw_state 0
scoreboard players set @s fs_throw_dist 0
scoreboard players set @s fs_throw_next 0