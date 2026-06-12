scoreboard players set @s xx_parry_cd 0
scoreboard players set @s xx_parry_held 0
scoreboard players set @s xx_parry_edge 0
scoreboard players set @s xx_parry_rise 0
scoreboard players set @s xx_parry_buf 0
scoreboard players set @s xx_guard 0
scoreboard players set @s xx_guard_ready 0
scoreboard players set @s xx_deflect 0
scoreboard players set @s xx_parry_hits 0

function xianxia:parry/guard_end
tag @s remove xianxia_parry_owner
