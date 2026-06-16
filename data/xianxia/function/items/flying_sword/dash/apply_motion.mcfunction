# Place a marker along the player's look vector, then copy that delta into player Motion.
kill @e[type=minecraft:marker,tag=flying_sword_dash_motion_temp]

$execute at @s rotated as @s positioned ^ ^ ^$(motion_distance) run summon minecraft:marker ~ ~ ~ {Tags:["flying_sword_dash_motion_temp"]}

data modify storage xianxia:items/flying_sword/dash motion set value [0.0d,0.0d,0.0d]

execute at @s store result score @s fs_dash_calc run data get entity @e[type=minecraft:marker,tag=flying_sword_dash_motion_temp,sort=nearest,limit=1] Pos[0] 1000000
execute store result score #origin fs_dash_calc run data get entity @s Pos[0] 1000000
scoreboard players operation @s fs_dash_calc -= #origin fs_dash_calc
execute store result storage xianxia:items/flying_sword/dash motion[0] double 0.000001 run scoreboard players get @s fs_dash_calc

execute at @s store result score @s fs_dash_calc run data get entity @e[type=minecraft:marker,tag=flying_sword_dash_motion_temp,sort=nearest,limit=1] Pos[1] 1000000
execute store result score #origin fs_dash_calc run data get entity @s Pos[1] 1000000
scoreboard players operation @s fs_dash_calc -= #origin fs_dash_calc
execute store result storage xianxia:items/flying_sword/dash motion[1] double 0.000001 run scoreboard players get @s fs_dash_calc

execute at @s store result score @s fs_dash_calc run data get entity @e[type=minecraft:marker,tag=flying_sword_dash_motion_temp,sort=nearest,limit=1] Pos[2] 1000000
execute store result score #origin fs_dash_calc run data get entity @s Pos[2] 1000000
scoreboard players operation @s fs_dash_calc -= #origin fs_dash_calc
execute store result storage xianxia:items/flying_sword/dash motion[2] double 0.000001 run scoreboard players get @s fs_dash_calc

data modify entity @s Motion set from storage xianxia:items/flying_sword/dash motion

kill @e[type=minecraft:marker,tag=flying_sword_dash_motion_temp]
