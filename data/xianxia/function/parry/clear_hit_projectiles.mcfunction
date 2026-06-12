# Clear only projectiles close enough to have plausibly caused this guarded hit.
execute as @e[type=minecraft:arrow,tag=!xianxia_parried,distance=..2,nbt={inGround:0b}] at @s run function xianxia:parry/projectile_hit
execute as @e[type=minecraft:spectral_arrow,tag=!xianxia_parried,distance=..2,nbt={inGround:0b}] at @s run function xianxia:parry/projectile_hit
execute as @e[type=minecraft:trident,tag=!xianxia_parried,distance=..2,nbt={inGround:0b}] at @s run function xianxia:parry/projectile_hit

execute as @e[type=minecraft:snowball,tag=!xianxia_parried,distance=..2] at @s run function xianxia:parry/projectile_hit
execute as @e[type=minecraft:egg,tag=!xianxia_parried,distance=..2] at @s run function xianxia:parry/projectile_hit
execute as @e[type=minecraft:ender_pearl,tag=!xianxia_parried,distance=..2] at @s run function xianxia:parry/projectile_hit
execute as @e[type=minecraft:splash_potion,tag=!xianxia_parried,distance=..2] at @s run function xianxia:parry/projectile_hit
execute as @e[type=minecraft:experience_bottle,tag=!xianxia_parried,distance=..2] at @s run function xianxia:parry/projectile_hit

execute as @e[type=minecraft:wind_charge,tag=!xianxia_parried,distance=..2] at @s run function xianxia:parry/projectile_hit
execute as @e[type=minecraft:breeze_wind_charge,tag=!xianxia_parried,distance=..2] at @s run function xianxia:parry/projectile_hit
execute as @e[type=minecraft:shulker_bullet,tag=!xianxia_parried,distance=..2] at @s run function xianxia:parry/projectile_hit
execute as @e[type=minecraft:llama_spit,tag=!xianxia_parried,distance=..2] at @s run function xianxia:parry/projectile_hit

execute as @e[type=minecraft:small_fireball,tag=!xianxia_parried,distance=..2] at @s run function xianxia:parry/projectile_hit
execute as @e[type=minecraft:fireball,tag=!xianxia_parried,distance=..2] at @s run function xianxia:parry/projectile_hit
execute as @e[type=minecraft:dragon_fireball,tag=!xianxia_parried,distance=..2] at @s run function xianxia:parry/projectile_hit
execute as @e[type=minecraft:wither_skull,tag=!xianxia_parried,distance=..2] at @s run function xianxia:parry/projectile_hit
