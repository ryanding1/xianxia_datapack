advancement revoke @s only xianxia:items/flying_sword/right_click

# Edge detection: only true on the first tick of a new right-click hold.
execute unless score @s fs_use_held matches 1.. run scoreboard players set @s fs_use_edge 1

# Held input lasts briefly and is refreshed every tick while right-click is held.
scoreboard players set @s fs_use_held 2