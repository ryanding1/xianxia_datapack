execute unless score @s fc_id matches 1.. run function xianxia:items/flying_sword/flying/visual/assign_id

# Sword form restores and raises a one-tick dash request.
execute if score @s fs_swap_mh_prev matches 1 if items entity @s weapon.offhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] unless items entity @s weapon.mainhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] run function xianxia:items/flying_sword/swap_lock/on_sword

# Feather form restores only.
execute if score @s fs_swap_mh_prev matches 1 if items entity @s weapon.offhand minecraft:feather[custom_data~{flying_sword:1b}] unless items entity @s weapon.mainhand minecraft:feather[custom_data~{flying_sword:1b}] run function xianxia:items/flying_sword/swap_lock/on_feather

function xianxia:items/flying_sword/swap_lock/update_mainhand_state
