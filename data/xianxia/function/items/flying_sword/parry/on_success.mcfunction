# Hook: runs once when a parry successfully affects at least one projectile.
# Add future effects here.

# refill stamina on parry success
scoreboard players operation @s fc_stamina = #max fc_cfg
effect give @s minecraft:instant_health 1 1 true 

# data/my_pack/function/blast.mcfunction
# Run as/at the player:
# execute as <player> at @s run function my_pack:blast

tag @s add blast_origin
playsound minecraft:entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.5 1

# Damage nearby entities, excluding the caster.
# Add type=!minecraft:player if you want to exclude ALL players, not just the caster.
execute as @e[distance=..5, tag=!blast_origin] positioned as @a[tag=blast_origin,limit=1,sort=nearest] run damage @s 8 minecraft:explosion by @a[tag=blast_origin,limit=1,sort=nearest]

tag @s remove blast_origin