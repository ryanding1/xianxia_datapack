tag @s add flying_sword_owner_this

scoreboard players operation #this fc_id = @s fc_id

# Keep display alive.
scoreboard players set @e[type=minecraft:item_display,tag=flying_sword_this] fc_ttl 5
scoreboard players add @e[type=minecraft:item_display,tag=flying_sword_this] fs_throw_age 1

# Arm recall only after Sneak has been released once after throwing.
execute unless predicate xianxia:input/sneak run scoreboard players set @s fs_recall_armed 1

# Start recall only on a fresh Sneak press after recall is armed.
execute if score @s fs_sneak_edge matches 1 if score @s fs_recall_armed matches 1.. run scoreboard players set @s fs_recall_active 1

# Stop recall when Sneak is released.
execute unless predicate xianxia:input/sneak run scoreboard players set @s fs_recall_active 0

# Arm freeze only after right-click has been released once after throwing.
# This prevents the throw-charge right-click from immediately freezing the sword.
execute unless score @s fs_use_held matches 1.. run scoreboard players set @s fs_freeze_armed 1

# State priority:
# 0 = outward / cursor-follow
# 1 = frozen
# 2 = recall
scoreboard players set @s fs_throw_state 0

# Recall while Sneak is held after a valid recall start.
execute if score @s fs_recall_active matches 1.. if predicate xianxia:input/sneak run scoreboard players set @s fs_throw_state 2

# Right-click with controller in mainhand = freeze.
# Freeze overrides recall.
execute if score @s fs_freeze_armed matches 1.. if score @s fs_use_held matches 1.. if items entity @s weapon.mainhand minecraft:stick[custom_data~{flying_sword_controller:1b}] run scoreboard players set @s fs_throw_state 1

# Move.
execute if score @s fs_throw_state matches 0 run function xianxia:items/flying_sword/throw/move_outward
execute if score @s fs_throw_state matches 2 run function xianxia:items/flying_sword/throw/move_recall

# Sword effects, sound, and damage.
execute as @e[type=minecraft:item_display,tag=flying_sword_this,limit=1] at @s run function xianxia:items/flying_sword/throw/sword_tick

# Return while recalling once the stored range is close enough.
execute if score @s fs_throw_state matches 2 if score @s fs_throw_dist matches ..100 if entity @e[type=minecraft:item_display,tag=flying_sword_this,scores={fs_throw_age=8..},limit=1] run function xianxia:items/flying_sword/throw/return

tag @s remove flying_sword_owner_this