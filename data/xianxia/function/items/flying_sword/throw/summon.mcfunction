scoreboard players set @s fs_throw_state 0
scoreboard players set @s fs_throw_dist 1000
scoreboard players set @s fs_throw_next 1000

playsound minecraft:item.trident.throw master @s ~ ~ ~ 1.2 1.0 0

# Summon the visible thrown sword.
execute rotated as @s anchored eyes positioned ^ ^ ^1 run summon minecraft:item_display ~ ~ ~ {Tags:["flying_sword_thrown","flying_sword_new"],Glowing:1b,NoGravity:1b,item:{id:"minecraft:diamond_sword",count:1},item_display:"ground",billboard:"fixed",brightness:{block:15,sky:15},view_range:4.0f,teleport_duration:1,interpolation_duration:1,transformation:{translation:[0f,0f,0f],scale:[2.0f,2.0f,2.0f],left_rotation:[0f,0f,0f,1f],right_rotation:{angle:1.570796f,axis:[-1f,-0.5f,-0.5f]}}}

scoreboard players operation @e[type=minecraft:item_display,tag=flying_sword_new,limit=1,sort=nearest] fc_id = @s fc_id
scoreboard players set @e[type=minecraft:item_display,tag=flying_sword_new,limit=1,sort=nearest] fc_ttl 5
scoreboard players set @e[type=minecraft:item_display,tag=flying_sword_new,limit=1,sort=nearest] fs_throw_age 0
scoreboard players set @e[type=minecraft:item_display,tag=flying_sword_new,limit=1,sort=nearest] fs_throw_loop 0

tag @e[type=minecraft:item_display,tag=flying_sword_new,limit=1,sort=nearest] remove flying_sword_new

# Summon this sword's cursor target marker.
execute rotated as @s anchored eyes positioned ^ ^ ^1 run summon minecraft:marker ~ ~ ~ {Tags:["flying_sword_target","flying_sword_new_target"]}

scoreboard players operation @e[type=minecraft:marker,tag=flying_sword_new_target,limit=1,sort=nearest] fc_id = @s fc_id

tag @e[type=minecraft:marker,tag=flying_sword_new_target,limit=1,sort=nearest] remove flying_sword_new_target