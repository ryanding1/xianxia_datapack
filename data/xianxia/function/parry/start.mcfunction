scoreboard players operation @s xx_parry_cd = #parry_cooldown xx_parry_cfg
scoreboard players operation @s xx_deflect = #deflect_ticks xx_parry_cfg
scoreboard players add @s xx_parry_penalty 0
scoreboard players operation @s xx_deflect -= @s xx_parry_penalty
execute if score @s xx_deflect < #min_deflect_ticks xx_parry_cfg run scoreboard players operation @s xx_deflect = #min_deflect_ticks xx_parry_cfg

scoreboard players operation @s xx_deflect_cap = #deflect_ticks xx_parry_cfg
scoreboard players operation @s xx_deflect_cap -= #min_deflect_ticks xx_parry_cfg
scoreboard players operation @s xx_parry_penalty += #parry_spam_step xx_parry_cfg
execute if score @s xx_parry_penalty > @s xx_deflect_cap run scoreboard players operation @s xx_parry_penalty = @s xx_deflect_cap

scoreboard players operation @s xx_guard = @s xx_deflect
scoreboard players set @s xx_parry_edge 0
scoreboard players set @s xx_parry_rise 1
scoreboard players set @s xx_parry_buf 0

tag @s add xianxia_parrying
function xianxia:parry/guard_ready_tick
function xianxia:parry/guard_protect

execute at @s run playsound minecraft:item.armor.equip_iron master @a[distance=..24] ~ ~ ~ 0.8 1.35 0
particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1 force @a[distance=..24]
