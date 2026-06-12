execute if score @s fs_dash_buf_dir matches 1 run scoreboard players set @s fs_dash_dir 1
execute if score @s fs_dash_buf_dir matches 2 run scoreboard players set @s fs_dash_dir 2
execute if score @s fs_dash_buf_dir matches 1..2 run function xianxia:items/flying_sword/dash/try_start

scoreboard players set @s fs_dash_buffer 0
scoreboard players set @s fs_dash_buf_dir 0
