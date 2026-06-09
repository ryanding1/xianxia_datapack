scoreboard players set @s fs_throw_charge 0
scoreboard players set @s fs_use_edge 0

scoreboard players set @s fs_recall_armed 0
scoreboard players set @s fs_recall_active 0
scoreboard players set @s fs_freeze_armed 0

# Convert the held sword into the controller FIRST.
item modify entity @s weapon.mainhand xianxia:items/flying_sword/to_controller

# Disable ride flight because the physical sword is leaving the player.
function xianxia:items/flying_sword/disable_flight_only

# Only summon the thrown sword if the conversion succeeded.
execute if items entity @s weapon.mainhand minecraft:stick[custom_data~{flying_sword_controller:1b}] run function xianxia:items/flying_sword/throw/summon

# Optional debug message if conversion failed.
execute unless items entity @s weapon.mainhand minecraft:stick[custom_data~{flying_sword_controller:1b}] run tellraw @s {"text":"Flying Sword throw failed: controller item was not created.","color":"red"}