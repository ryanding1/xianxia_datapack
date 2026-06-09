# Flying / riding mode.
function xianxia:items/flying_sword/flying/tick

# Shared input/combat systems.
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function xianxia:items/flying_sword/input/sneak_tick
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function xianxia:items/flying_sword/throw/tick
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function xianxia:items/flying_sword/parry/tick
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function xianxia:items/flying_sword/input/tick_end