# Arrow-like projectiles. Must not already be in the ground.
execute as @e[type=minecraft:arrow,tag=!parried,distance=..5,nbt={inGround:0b}] at @s run function xianxia:items/flying_sword/parry/projectile
execute as @e[type=minecraft:spectral_arrow,tag=!parried,distance=..5,nbt={inGround:0b}] at @s run function xianxia:items/flying_sword/parry/projectile
execute as @e[type=minecraft:trident,tag=!parried,distance=..5,nbt={inGround:0b}] at @s run function xianxia:items/flying_sword/parry/projectile

# Thrown projectiles.
execute as @e[type=minecraft:snowball,tag=!parried,distance=..5] at @s run function xianxia:items/flying_sword/parry/projectile
execute as @e[type=minecraft:egg,tag=!parried,distance=..5] at @s run function xianxia:items/flying_sword/parry/projectile
execute as @e[type=minecraft:ender_pearl,tag=!parried,distance=..5] at @s run function xianxia:items/flying_sword/parry/projectile
execute as @e[type=minecraft:splash_potion,tag=!parried,distance=..5] at @s run function xianxia:items/flying_sword/parry/projectile
execute as @e[type=minecraft:experience_bottle,tag=!parried,distance=..5] at @s run function xianxia:items/flying_sword/parry/projectile

# Magical / hostile projectiles.
execute as @e[type=minecraft:wind_charge,tag=!parried,distance=..5] at @s run function xianxia:items/flying_sword/parry/projectile
execute as @e[type=minecraft:breeze_wind_charge,tag=!parried,distance=..5] at @s run function xianxia:items/flying_sword/parry/projectile
execute as @e[type=minecraft:shulker_bullet,tag=!parried,distance=..5] at @s run function xianxia:items/flying_sword/parry/projectile
execute as @e[type=minecraft:llama_spit,tag=!parried,distance=..5] at @s run function xianxia:items/flying_sword/parry/projectile

# Fireball-like projectiles.
execute as @e[type=minecraft:small_fireball,tag=!parried,distance=..5] at @s run function xianxia:items/flying_sword/parry/projectile
execute as @e[type=minecraft:fireball,tag=!parried,distance=..5] at @s run function xianxia:items/flying_sword/parry/projectile
execute as @e[type=minecraft:dragon_fireball,tag=!parried,distance=..5] at @s run function xianxia:items/flying_sword/parry/projectile
execute as @e[type=minecraft:wither_skull,tag=!parried,distance=..5] at @s run function xianxia:items/flying_sword/parry/projectile