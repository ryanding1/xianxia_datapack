execute if entity @s[tag=xianxia_posture_broken] run data modify entity @s abilities.flying set value 0b
execute if entity @s[tag=xianxia_posture_broken] run data modify entity @s abilities.mayfly set value 0b
execute if entity @s[tag=xianxia_posture_broken] run data modify entity @s abilities.flySpeed set value 0.05f
execute if entity @s[tag=xianxia_posture_broken] run tag @s remove flying_sword_active

execute unless entity @s[tag=xianxia_posture_broken] run tag @s add flying_sword_active
execute unless entity @s[tag=xianxia_posture_broken] run data modify entity @s abilities.mayfly set value 1b
$execute unless entity @s[tag=xianxia_posture_broken] run data modify entity @s abilities.flySpeed set value $(fly_speed)
