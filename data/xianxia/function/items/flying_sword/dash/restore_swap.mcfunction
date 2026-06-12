# After vanilla F-swap:
# - offhand holds the flying sword
# - mainhand either holds the previous offhand item, or is empty
execute if data entity @s SelectedItem run function xianxia:items/flying_sword/dash/restore_swap_nonempty
execute unless data entity @s SelectedItem run function xianxia:items/flying_sword/dash/restore_swap_empty
