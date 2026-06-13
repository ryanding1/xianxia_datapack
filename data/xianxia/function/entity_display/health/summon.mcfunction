summon minecraft:text_display ~ ~ ~ {Tags:["xianxia_entity_display","xianxia_health_display","xianxia_this_display","xianxia_new_display"],text:{text:""},billboard:"center",brightness:{block:15,sky:15},view_range:32.0f,shadow:1b,background:0,alignment:"center",line_width:220,interpolation_duration:0,teleport_duration:1,transformation:{translation:[0f,0.75f,0f],scale:[0.7f,0.7f,0.7f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players operation @e[type=minecraft:text_display,tag=xianxia_new_display,limit=1,sort=nearest] xx_hud_id = @s xx_hud_id
scoreboard players set @e[type=minecraft:text_display,tag=xianxia_new_display,limit=1,sort=nearest] xx_hud_ttl 3
ride @e[type=minecraft:text_display,tag=xianxia_new_display,limit=1,sort=nearest] mount @s
tag @e[type=minecraft:text_display,tag=xianxia_new_display,limit=1,sort=nearest] remove xianxia_new_display
