tag @s add xianxia_posture_broken

scoreboard players operation @s xx_posture = @s xx_post_max
scoreboard players operation @s xx_post_break = #posture_break_ticks xx_post_cfg
scoreboard players set @s xx_post_cd 0

function xianxia:parry/cancel

data modify entity @s abilities.flying set value 0b
data modify entity @s abilities.mayfly set value 0b
data modify entity @s abilities.walkSpeed set value 0.0f
data modify entity @s abilities.flySpeed set value 0.0f
tag @s remove flying_sword_active
function xianxia:posture/player/jump_lock

effect give @s minecraft:slowness 2 255 true
effect give @s minecraft:weakness 2 255 true
effect give @s minecraft:mining_fatigue 2 255 true

playsound minecraft:entity.player.attack.crit master @a[distance=..24] ~ ~ ~ 0.8 0.55 0
particle minecraft:damage_indicator ~ ~1 ~ 0.35 0.35 0.35 0.1 12 force @a[distance=..24]
