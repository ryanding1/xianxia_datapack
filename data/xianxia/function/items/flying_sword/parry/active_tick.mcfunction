tag @s add flying_sword_parry_owner

# Freeze/protect the player.
data modify entity @s Invulnerable set value 1b
data modify entity @s Motion set value [0.0d,0.0d,0.0d]
data modify entity @s abilities.flySpeed set value 0.0f
effect give @s minecraft:slowness 1 255 true

# Keep parrying any new projectiles entering the radius.
scoreboard players set @s fs_parry_hits 0
function xianxia:items/flying_sword/parry/apply_to_projectiles

tag @s remove flying_sword_parry_owner