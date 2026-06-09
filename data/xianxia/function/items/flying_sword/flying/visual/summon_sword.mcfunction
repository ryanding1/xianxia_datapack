summon minecraft:item_display ~ ~ ~ {Tags:["flying_sword_sword","flying_sword_new_sword"],item:{id:"minecraft:diamond_sword",count:1},item_display:"ground",billboard:"fixed",brightness:{block:15,sky:15},view_range:2.0f,teleport_duration:1,interpolation_duration:0,transformation:{translation:[0f,-1.9f,-0.4f],right_rotation:{angle:1.570796f,axis:[1f,0f,0f]},scale:[3.0f,3.0f,3.0f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}

scoreboard players operation @e[type=minecraft:item_display,tag=flying_sword_new_sword,limit=1,sort=nearest] fc_id = @s fc_id
scoreboard players set @e[type=minecraft:item_display,tag=flying_sword_new_sword,limit=1,sort=nearest] fc_ttl 5

ride @e[type=minecraft:item_display,tag=flying_sword_new_sword,limit=1,sort=nearest] mount @s

tag @e[type=minecraft:item_display,tag=flying_sword_new_sword,limit=1,sort=nearest] remove flying_sword_new_sword