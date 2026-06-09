tag @s add parried
tag @s add flying_sword_parried

# Per-projectile sound and visual at the projectile's current location.
particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force @a
playsound minecraft:item.mace.smash_air master @a[distance=..24] ~ ~ ~ 0.3 1.0 0

# Count this projectile as a successful parry for the owner.
scoreboard players add @a[tag=flying_sword_parry_owner,limit=1,sort=nearest] fs_parry_hits 1

# Hook for future custom per-projectile behavior.
# @s is still the projectile here.
function xianxia:items/flying_sword/parry/on_projectile

# Remove the projectile completely.
kill @s