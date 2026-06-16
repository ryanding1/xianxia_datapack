execute unless score #health_scale xx_hud_hp matches 1000 run scoreboard players set #health_scale xx_hud_hp 1000

# Health displays: all players and non-boss enemies.
execute as @a[gamemode=!spectator] at @s run function xianxia:entity_display/health/target
execute as @e[tag=enemy,tag=!boss,type=!minecraft:player,type=!minecraft:text_display,type=!minecraft:item_display,type=!minecraft:block_display,type=!minecraft:marker,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:area_effect_cloud] at @s run function xianxia:entity_display/health/target

# Posture displays: all players plus enemies or bosses with an initialized posture max.
execute as @a[gamemode=!spectator] at @s run function xianxia:entity_display/posture/target
execute as @e[tag=enemy,type=!minecraft:player,type=!minecraft:text_display,type=!minecraft:item_display,type=!minecraft:block_display,type=!minecraft:marker,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:area_effect_cloud,scores={xx_post_max=1..}] at @s run function xianxia:entity_display/posture/target
execute as @e[tag=boss,tag=!enemy,type=!minecraft:player,type=!minecraft:text_display,type=!minecraft:item_display,type=!minecraft:block_display,type=!minecraft:marker,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:area_effect_cloud,scores={xx_post_max=1..}] at @s run function xianxia:entity_display/posture/target

# Displays that are not refreshed this tick belong to dead, unloaded, or no-longer-valid targets.
scoreboard players remove @e[type=minecraft:text_display,tag=xianxia_entity_display] xx_hud_ttl 1
kill @e[type=minecraft:text_display,tag=xianxia_entity_display,scores={xx_hud_ttl=..0}]
