execute if score #enabled debug matches 1 run tellraw @a {"text":"xianxia parry loaded"}

scoreboard objectives add xx_parry_cfg dummy
scoreboard objectives add xx_parry_cd dummy
scoreboard objectives add xx_parry_held dummy
scoreboard objectives add xx_parry_edge dummy
scoreboard objectives add xx_parry_buf dummy
scoreboard objectives add xx_guard dummy
scoreboard objectives add xx_guard_ready dummy
scoreboard objectives add xx_guard_hurt dummy
scoreboard objectives add xx_deflect dummy
scoreboard objectives add xx_parry_hits dummy

function xianxia:parry/config

execute as @a[tag=xianxia_parry_invulnerable,tag=!flying_sword_dash_invulnerable] run data modify entity @s Invulnerable set value 0b
execute as @a[tag=xianxia_parry_protected] run function xianxia:parry/guard_knockback_end
execute as @a[tag=xianxia_parry_protected] run effect clear @s minecraft:resistance

tag @a remove xianxia_parry_owner
tag @a remove xianxia_parrying
tag @a remove xianxia_parry_invulnerable
tag @a remove xianxia_parry_protected
