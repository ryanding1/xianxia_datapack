execute at @e[type=minecraft:item_display,tag=flying_sword_this,limit=1] run stopsound @a[distance=..48] master minecraft:item.elytra.flying

kill @e[type=minecraft:item_display,tag=flying_sword_this]
kill @e[type=minecraft:marker,tag=flying_sword_target_this]

function xianxia:items/flying_sword/throw/restore_item

scoreboard players set @s fs_throw_charge 0
scoreboard players set @s fs_throw_state 0
scoreboard players set @s fs_throw_dist 0
scoreboard players set @s fs_throw_next 0
scoreboard players set @s fs_recall_active 0
scoreboard players set @s fs_recall_armed 0
scoreboard players set @s fs_freeze_armed 0