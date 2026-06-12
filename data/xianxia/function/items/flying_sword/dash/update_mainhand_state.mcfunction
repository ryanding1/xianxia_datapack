scoreboard players set @s fs_dash_mh_prev 0
execute if items entity @s weapon.mainhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] run scoreboard players set @s fs_dash_mh_prev 1
execute if items entity @s weapon.mainhand minecraft:feather[custom_data~{flying_sword:1b}] run scoreboard players set @s fs_dash_mh_prev 1
