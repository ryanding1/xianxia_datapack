# Cooldown and active movement.
execute unless score @s fc_id matches 1.. run function xianxia:items/flying_sword/flying/visual/assign_id

scoreboard players remove @s[scores={fs_dash_cd=1..}] fs_dash_cd 1

execute if score @s fs_dash_ticks matches 1.. run function xianxia:items/flying_sword/dash/active_tick

# F-swap trigger: sword form restores and may dash.
execute if score @s fs_dash_mh_prev matches 1 if items entity @s weapon.offhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] unless items entity @s weapon.mainhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] run function xianxia:items/flying_sword/dash/on_swap

# Feather form restores only, preventing accidental offhand swaps while flying.
execute if score @s fs_dash_mh_prev matches 1 if items entity @s weapon.offhand minecraft:feather[custom_data~{flying_sword:1b}] unless items entity @s weapon.mainhand minecraft:feather[custom_data~{flying_sword:1b}] run function xianxia:items/flying_sword/dash/restore_swap

function xianxia:items/flying_sword/dash/update_mainhand_state
