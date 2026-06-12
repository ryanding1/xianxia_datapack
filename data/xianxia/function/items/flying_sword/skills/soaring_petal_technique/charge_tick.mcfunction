# Continue charging only while:
# - right-click is held
# - player is sneaking
# - sword form is in mainhand
# - the Soaring Petal skillbook is in offhand
execute if score @s fs_use_held matches 1.. if predicate xianxia:input/sneak if items entity @s weapon.mainhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] if items entity @s weapon.offhand minecraft:written_book[custom_data~{skill:"soaring_petal_technique"}] run scoreboard players add @s fs_spt_charge 1

# Cancel when any charge condition is no longer true.
execute if score @s fs_spt_charge matches 1.. unless score @s fs_use_held matches 1.. run function xianxia:items/flying_sword/skills/soaring_petal_technique/charge_cancel
execute if score @s fs_spt_charge matches 1.. unless predicate xianxia:input/sneak run function xianxia:items/flying_sword/skills/soaring_petal_technique/charge_cancel
execute if score @s fs_spt_charge matches 1.. unless items entity @s weapon.mainhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] run function xianxia:items/flying_sword/skills/soaring_petal_technique/charge_cancel
execute if score @s fs_spt_charge matches 1.. unless items entity @s weapon.offhand minecraft:written_book[custom_data~{skill:"soaring_petal_technique"}] run function xianxia:items/flying_sword/skills/soaring_petal_technique/charge_cancel

# Bell charge sounds.
execute if score @s fs_spt_charge matches 1 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1.0 0.5 0
execute if score @s fs_spt_charge matches 4 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1.0 0.625 0
execute if score @s fs_spt_charge matches 7 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1.0 0.75 0

# Release once the configured charge time is reached.
execute if score @s fs_spt_charge >= #spt_charge_ticks fc_cfg run function xianxia:items/flying_sword/skills/soaring_petal_technique/throw
