scoreboard players set @s xx_post_handled 1
scoreboard players set @s xx_deflect 0
scoreboard players set @s xx_parry_penalty 0
scoreboard players set @s xx_parry_reset 0

function xianxia:posture/player/add_deflect
function xianxia:parry/clear_hit_projectiles

execute at @s run playsound minecraft:item.mace.smash_air master @a[distance=..24] ~ ~ ~ 0.7 1.5 0
#particle minecraft:crit ~ ~1 ~ 0.25 0.25 0.25 0.02 8 force @a[distance=..24]
execute at @s anchored eyes run particle minecraft:firework ^ ^-0.2 ^0.75 0.1 0.1 0.1 0.08 10 normal
