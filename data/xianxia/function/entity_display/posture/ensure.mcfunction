scoreboard players operation #this xx_hud_id = @s xx_hud_id
scoreboard players operation #value xx_posture = @s xx_posture

tag @e[type=minecraft:text_display,tag=xianxia_posture_display] remove xianxia_this_display
execute as @e[type=minecraft:text_display,tag=xianxia_posture_display] if score @s xx_hud_id = #this xx_hud_id run tag @s add xianxia_this_display
execute unless entity @e[type=minecraft:text_display,tag=xianxia_posture_display,tag=xianxia_this_display,limit=1] run function xianxia:entity_display/posture/summon

ride @e[type=minecraft:text_display,tag=xianxia_posture_display,tag=xianxia_this_display,limit=1] mount @s
tag @e[type=minecraft:text_display,tag=xianxia_posture_display,tag=xianxia_this_display] remove xianxia_display_posture_broken
execute if entity @s[tag=xianxia_posture_broken] run tag @e[type=minecraft:text_display,tag=xianxia_posture_display,tag=xianxia_this_display] add xianxia_display_posture_broken
execute as @e[type=minecraft:text_display,tag=xianxia_posture_display,tag=xianxia_this_display] run scoreboard players set @s xx_hud_ttl 3
execute as @e[type=minecraft:text_display,tag=xianxia_posture_display,tag=xianxia_this_display] run scoreboard players operation @s xx_posture = #value xx_posture
execute as @e[type=minecraft:text_display,tag=xianxia_posture_display,tag=xianxia_this_display] run function xianxia:entity_display/posture/render

tag @e[type=minecraft:text_display,tag=xianxia_posture_display,tag=xianxia_this_display] remove xianxia_this_display
