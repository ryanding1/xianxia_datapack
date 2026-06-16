tag @s add xianxia_posture_broken

scoreboard players operation @s xx_posture = @s xx_post_max
scoreboard players operation @s xx_post_break = #posture_break_ticks xx_post_cfg
scoreboard players set @s xx_post_cd 0

function xianxia:parry/cancel

function xianxia:posture/player/break_lock_tick

playsound minecraft:entity.player.attack.crit master @a[distance=..24] ~ ~ ~ 0.8 0.55 0
particle minecraft:damage_indicator ~ ~1 ~ 0.35 0.35 0.35 0.1 12 force @a[distance=..24]
