scoreboard players set @s xx_post_break 0
scoreboard players set @s xx_posture 0
scoreboard players set @s xx_post_cd 0

tag @s remove xianxia_posture_broken

data modify entity @s abilities.walkSpeed set value 0.1f
data modify entity @s abilities.flySpeed set value 0.05f
function xianxia:posture/player/jump_unlock
effect clear @s minecraft:slowness
effect clear @s minecraft:weakness
effect clear @s minecraft:mining_fatigue

playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.35 1.6 0
