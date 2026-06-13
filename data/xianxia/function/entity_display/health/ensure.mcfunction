scoreboard players operation #this xx_hud_id = @s xx_hud_id
scoreboard players operation #value xx_hud_hp = @s xx_hud_hp

tag @e[type=minecraft:text_display,tag=xianxia_health_display] remove xianxia_this_display
execute as @e[type=minecraft:text_display,tag=xianxia_health_display] if score @s xx_hud_id = #this xx_hud_id run tag @s add xianxia_this_display
execute unless entity @e[type=minecraft:text_display,tag=xianxia_health_display,tag=xianxia_this_display,limit=1] run function xianxia:entity_display/health/summon

ride @e[type=minecraft:text_display,tag=xianxia_health_display,tag=xianxia_this_display,limit=1] mount @s
data modify entity @e[type=minecraft:text_display,tag=xianxia_health_display,tag=xianxia_this_display,limit=1] transformation.translation[1] set value 0.75f
execute as @e[type=minecraft:text_display,tag=xianxia_health_display,tag=xianxia_this_display] run scoreboard players set @s xx_hud_ttl 3
execute as @e[type=minecraft:text_display,tag=xianxia_health_display,tag=xianxia_this_display] run scoreboard players operation @s xx_hud_hp = #value xx_hud_hp
execute as @e[type=minecraft:text_display,tag=xianxia_health_display,tag=xianxia_this_display] run function xianxia:entity_display/health/render

tag @e[type=minecraft:text_display,tag=xianxia_health_display,tag=xianxia_this_display] remove xianxia_this_display
