# Continue charging only while:
# - right-click is held
# - player is sneaking
# - sword form is in mainhand
execute if score @s fs_use_held matches 1.. if predicate xianxia:input/sneak if items entity @s weapon.mainhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] run scoreboard players add @s fs_throw_charge 1

# Cancel when any charge condition is no longer true.
execute if score @s fs_throw_charge matches 1.. unless score @s fs_use_held matches 1.. run function xianxia:items/flying_sword/throw/charge_cancel
execute if score @s fs_throw_charge matches 1.. unless predicate xianxia:input/sneak run function xianxia:items/flying_sword/throw/charge_cancel
execute if score @s fs_throw_charge matches 1.. unless items entity @s weapon.mainhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] run function xianxia:items/flying_sword/throw/charge_cancel

# Bell charge sounds.
execute if score @s fs_throw_charge matches 1 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1.0 0.5 0
execute if score @s fs_throw_charge matches 4 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1.0 0.625 0
execute if score @s fs_throw_charge matches 7 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1.0 0.75 0

# Throw on tick 20.
execute if score @s fs_throw_charge matches 10.. run function xianxia:items/flying_sword/throw/throw