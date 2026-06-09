$damage @s $(throw_damage) minecraft:magic by @a[tag=flying_sword_owner_this,limit=1,sort=nearest]

# WHEN ENEMY TAGS EXIST LATER
# $execute as @e[distance=..$(throw_damage_radius),tag=enemy] at @s run function xianxia:items/flying_sword/throw/on_hit with storage xianxia:items/flying_sword/config

particle minecraft:sweep_attack ~ ~1 ~ 0.25 0.5 0.25 0 1 force @a
playsound minecraft:entity.player.attack.weak master @a[distance=..10] ~ ~ ~ 0.5 1.0 0