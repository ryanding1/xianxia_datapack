scoreboard players operation @s fs_throw_next = @s fs_throw_dist
scoreboard players operation @s fs_throw_next += #throw_speed_milli fc_cfg

execute if score @s fs_throw_next > #throw_max_dist fc_cfg run scoreboard players operation @s fs_throw_next = #throw_max_dist fc_cfg

execute store result storage xianxia:items/flying_sword/config throw_dist double 0.001 run scoreboard players get @s fs_throw_next
execute store result storage xianxia:items/flying_sword/config throw_speed double 0.001 run scoreboard players get #throw_speed_milli fc_cfg

function xianxia:items/flying_sword/throw/move_outward_macro with storage xianxia:items/flying_sword/config