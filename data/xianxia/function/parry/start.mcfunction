scoreboard players operation @s xx_parry_cd = #parry_cooldown xx_parry_cfg
scoreboard players operation @s xx_deflect = #deflect_ticks xx_parry_cfg
scoreboard players operation @s xx_guard = #guard_hold_ticks xx_parry_cfg
scoreboard players set @s xx_parry_edge 0
scoreboard players set @s xx_parry_buf 0

tag @s add xianxia_parrying
function xianxia:parry/guard_ready_tick
function xianxia:parry/guard_protect

playsound minecraft:item.armor.equip_iron master @s ~ ~ ~ 0.8 1.35 0
particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1 force @a[distance=..24]
