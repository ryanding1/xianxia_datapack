scoreboard players operation @s fs_spt_next = @s fs_spt_dist
scoreboard players operation @s fs_spt_next += #spt_speed_milli fc_cfg

execute if score @s fs_spt_next > #spt_max_dist fc_cfg run scoreboard players operation @s fs_spt_next = #spt_max_dist fc_cfg

execute store result storage xianxia:items/flying_sword/skills/soaring_petal_technique/config spt_dist double 0.001 run scoreboard players get @s fs_spt_next
execute store result storage xianxia:items/flying_sword/skills/soaring_petal_technique/config spt_speed double 0.001 run scoreboard players get #spt_speed_milli fc_cfg

function xianxia:items/flying_sword/skills/soaring_petal_technique/move_outward_macro with storage xianxia:items/flying_sword/skills/soaring_petal_technique/config
