execute rotated as @s anchored eyes positioned ^ ^ ^1 run summon minecraft:block_display ~ ~ ~ {Tags:["dragon_whisker_needle_display","dragon_whisker_needle_new"],block_state:{Name:"minecraft:black_concrete"},brightness:{block:15,sky:15},view_range:0.0f,interpolation_duration:0,teleport_duration:0,transformation:{translation:[-0.03125f,-0.03125f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}

scoreboard players operation @e[type=minecraft:block_display,tag=dragon_whisker_needle_new,limit=1,sort=nearest] fc_id = @s fc_id
scoreboard players set @e[type=minecraft:block_display,tag=dragon_whisker_needle_new,limit=1,sort=nearest] dwn_visual_age 0

execute as @e[type=minecraft:block_display,tag=dragon_whisker_needle_new,limit=1,sort=nearest] at @s rotated as @a[tag=dragon_whisker_needle_owner_this,limit=1] run tp @s ~ ~ ~ ~ ~
data modify entity @e[type=minecraft:block_display,tag=dragon_whisker_needle_new,limit=1,sort=nearest] transformation.scale[0] set value 0.0625f
data modify entity @e[type=minecraft:block_display,tag=dragon_whisker_needle_new,limit=1,sort=nearest] transformation.scale[1] set value 0.0625f
execute store result entity @e[type=minecraft:block_display,tag=dragon_whisker_needle_new,limit=1,sort=nearest] transformation.scale[2] float 1 run scoreboard players get @s dwn_hit_distance
data modify entity @e[type=minecraft:block_display,tag=dragon_whisker_needle_new,limit=1,sort=nearest] view_range set value 128.0f
tag @e[type=minecraft:block_display,tag=dragon_whisker_needle_new,limit=1,sort=nearest] remove dragon_whisker_needle_new
