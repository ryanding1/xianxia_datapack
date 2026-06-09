data modify entity @s Invulnerable set value 0b

$data modify entity @s abilities.flySpeed set value $(fly_speed)

effect clear @s minecraft:slowness

tag @s remove flying_sword_parrying
scoreboard players set @s fs_parry_active 0