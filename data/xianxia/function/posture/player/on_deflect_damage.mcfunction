scoreboard players set @s xx_post_handled 1
scoreboard players set @s xx_deflect 0

function xianxia:posture/player/add_deflect
function xianxia:parry/clear_hit_projectiles

playsound minecraft:item.mace.smash_air master @s ~ ~ ~ 0.45 1.5 0
particle minecraft:crit ~ ~1 ~ 0.25 0.25 0.25 0.02 8 force @a[distance=..24]
