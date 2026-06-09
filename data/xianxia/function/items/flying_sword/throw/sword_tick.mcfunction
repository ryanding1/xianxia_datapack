# Trail.
particle minecraft:cherry_leaves ~ ~ ~ 0.15 0.15 0.15 0.01 1 force @a

# Elytra loop at sword location.
execute unless score @s fs_throw_loop matches 0.. run scoreboard players set @s fs_throw_loop 0
scoreboard players remove @s fs_throw_loop 1

execute if score @s fs_throw_loop matches ..0 run playsound minecraft:item.elytra.flying master @a[distance=..10] ~ ~ ~ 0.1 1.0 0
execute if score @s fs_throw_loop matches ..0 run scoreboard players operation @s fs_throw_loop = #throw_elytra_loop_ticks fc_cfg

# Damage aura.
function xianxia:items/flying_sword/throw/damage_tick_macro with storage xianxia:items/flying_sword/config