# @s = damaged entity

tag @s add fly_thru_dmg
tag @s add fly_thru_dmg_in_range

scoreboard players operation @s fs_fly_dmg_ttl = #fly_thru_ttl fc_cfg

$damage @s $(fly_thru_damage) minecraft:magic by @a[tag=flying_sword_fly_dmg_owner,limit=1,sort=nearest]

particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 1 force @a
playsound minecraft:entity.player.attack.weak master @a[distance=..24] ~ ~ ~ 1.0 1.0 0

function xianxia:items/flying_sword/flying/fly_through_damage/on_hit