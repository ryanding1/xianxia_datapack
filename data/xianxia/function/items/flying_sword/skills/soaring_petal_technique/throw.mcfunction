scoreboard players set @s fs_spt_charge 0
scoreboard players set @s fs_use_edge 0

scoreboard players set @s fs_spt_recall_armed 0
scoreboard players set @s fs_spt_recall_active 0
scoreboard players set @s fs_spt_freeze_armed 0

# Convert the held sword into the Soaring Petal controller FIRST.
item modify entity @s weapon.mainhand xianxia:items/flying_sword/skills/soaring_petal_technique/to_controller

# Disable ride flight because the physical sword is leaving the player.
function xianxia:items/flying_sword/flying/disable_flight_only

# Only summon the thrown sword if the conversion succeeded.
execute if items entity @s weapon.mainhand minecraft:stick[custom_data~{flying_sword_controller:1b,flying_sword_controller_skill:"soaring_petal_technique"}] run function xianxia:items/flying_sword/skills/soaring_petal_technique/summon

# Optional debug message if conversion failed.
execute unless items entity @s weapon.mainhand minecraft:stick[custom_data~{flying_sword_controller:1b,flying_sword_controller_skill:"soaring_petal_technique"}] run tellraw @s {"text":"Soaring Petal Technique failed: controller item was not created.","color":"red"}
