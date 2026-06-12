execute if entity @s[tag=xianxia_parry_protected] run function xianxia:parry/guard_knockback_end
execute if entity @s[tag=xianxia_parry_protected] run effect clear @s minecraft:resistance

tag @s remove xianxia_parry_invulnerable
tag @s remove xianxia_parry_protected
tag @s remove xianxia_parrying
scoreboard players set @s xx_guard_ready 0
