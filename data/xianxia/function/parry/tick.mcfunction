scoreboard players remove @s[scores={xx_parry_cd=1..}] xx_parry_cd 1
scoreboard players remove @s[scores={xx_parry_buf=1..}] xx_parry_buf 1
execute unless score @s xx_parry_rise matches 1 run scoreboard players remove @s[scores={xx_parry_reset=1..}] xx_parry_reset 1
execute unless score @s xx_parry_reset matches 1.. run scoreboard players set @s xx_parry_penalty 0
execute unless score @s xx_parry_reset matches 1.. run scoreboard players set @s xx_parry_reset 0

# Coyote parry after an item changed from a buffer form into a real parry weapon.
execute if score @s xx_parry_buf matches 1.. unless entity @s[tag=xianxia_posture_broken] if items entity @s weapon.mainhand #xianxia:parry_weapons[custom_data~{xianxia_parry_weapon:1b}] run function xianxia:parry/attempt
execute if score @s xx_parry_buf matches 1.. unless entity @s[tag=xianxia_posture_broken] unless items entity @s weapon.mainhand #xianxia:parry_weapons[custom_data~{xianxia_parry_weapon:1b}] if items entity @s weapon.mainhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] run function xianxia:parry/attempt

# Held right-click maintains a regular block after the deflect window.
execute if score @s fs_use_held matches 1.. unless predicate xianxia:input/sneak unless entity @s[tag=xianxia_posture_broken] if items entity @s weapon.mainhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] run function xianxia:parry/force_guard
execute if score @s xx_parry_held matches 1.. unless entity @s[tag=xianxia_posture_broken] if items entity @s weapon.mainhand #xianxia:parry_weapons[custom_data~{xianxia_parry_weapon:1b}] run function xianxia:parry/refresh_guard
execute if score @s xx_parry_held matches 1.. unless entity @s[tag=xianxia_posture_broken] unless items entity @s weapon.mainhand #xianxia:parry_weapons[custom_data~{xianxia_parry_weapon:1b}] if items entity @s weapon.mainhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] run function xianxia:parry/refresh_guard
execute if score @s xx_guard matches 1.. run function xianxia:parry/guard_ready_tick
execute if score @s xx_guard matches 1.. run function xianxia:parry/guard_protect

execute unless score @s xx_parry_rise matches 1 run scoreboard players remove @s[scores={xx_deflect=1..}] xx_deflect 1
execute unless score @s xx_parry_rise matches 1 run scoreboard players remove @s[scores={xx_guard=1..}] xx_guard 1
scoreboard players remove @s[scores={xx_parry_held=1..}] xx_parry_held 1

execute unless score @s xx_guard matches 1.. run function xianxia:parry/guard_end

scoreboard players set @s xx_parry_edge 0
scoreboard players set @s xx_parry_rise 0
