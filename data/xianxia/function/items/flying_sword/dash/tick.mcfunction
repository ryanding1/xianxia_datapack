scoreboard players remove @s[scores={fs_dash_cd=1..}] fs_dash_cd 1

execute if score @s fs_dash_ticks matches 1.. run function xianxia:items/flying_sword/dash/active_tick

# One-tick request from swap_lock when sword form was F-swapped.
execute if score @s fs_dash_request matches 1.. run function xianxia:items/flying_sword/dash/on_swap
scoreboard players set @s fs_dash_request 0
