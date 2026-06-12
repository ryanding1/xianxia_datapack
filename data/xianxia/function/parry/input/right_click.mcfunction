# Edge detection for the shared parry input.
execute unless score @s xx_parry_held matches 1.. run scoreboard players set @s xx_parry_edge 1
execute if score @s xx_parry_edge matches 1 run scoreboard players set @s xx_parry_rise 1
execute if score @s xx_parry_edge matches 1 run scoreboard players operation @s xx_parry_reset = #parry_spam_reset_ticks xx_parry_cfg
scoreboard players operation @s xx_parry_held = #guard_hold_ticks xx_parry_cfg

# Fresh press on a parry weapon starts the deflect window.
execute if score @s xx_parry_edge matches 1 unless entity @s[tag=xianxia_posture_broken] if items entity @s weapon.mainhand #xianxia:parry_weapons[custom_data~{xianxia_parry_weapon:1b}] run function xianxia:parry/attempt
execute if score @s xx_parry_edge matches 1 unless entity @s[tag=xianxia_posture_broken] unless items entity @s weapon.mainhand #xianxia:parry_weapons[custom_data~{xianxia_parry_weapon:1b}] if items entity @s weapon.mainhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] run function xianxia:parry/attempt

# Apply guard protection immediately from the input reward, then parry/tick refreshes it.
execute unless entity @s[tag=xianxia_posture_broken] if items entity @s weapon.mainhand #xianxia:parry_weapons[custom_data~{xianxia_parry_weapon:1b}] run function xianxia:parry/force_guard
execute unless entity @s[tag=xianxia_posture_broken] unless items entity @s weapon.mainhand #xianxia:parry_weapons[custom_data~{xianxia_parry_weapon:1b}] if items entity @s weapon.mainhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] run function xianxia:parry/force_guard

# Fresh press on a transitional form can become a parry after the item normalizes.
execute if score @s xx_parry_edge matches 1 unless entity @s[tag=xianxia_posture_broken] unless items entity @s weapon.mainhand #xianxia:parry_weapons[custom_data~{xianxia_parry_weapon:1b}] if items entity @s weapon.mainhand #xianxia:parry_buffer_weapons[custom_data~{xianxia_parry_buffer_weapon:1b}] run scoreboard players operation @s xx_parry_buf = #parry_buffer_ticks xx_parry_cfg
