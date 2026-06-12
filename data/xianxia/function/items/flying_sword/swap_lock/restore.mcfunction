# After vanilla F-swap:
# - offhand holds the protected item
# - mainhand either holds the previous offhand item, or is empty
execute if data entity @s SelectedItem run function xianxia:items/flying_sword/swap_lock/restore_nonempty
execute unless data entity @s SelectedItem run function xianxia:items/flying_sword/swap_lock/restore_empty
