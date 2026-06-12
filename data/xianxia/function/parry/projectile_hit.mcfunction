tag @s add xianxia_parried

particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force @a
playsound minecraft:item.mace.smash_air master @a[distance=..24] ~ ~ ~ 0.35 1.3 0

function xianxia:parry/on_projectile

kill @s
