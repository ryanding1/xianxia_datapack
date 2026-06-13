execute if score #enabled debug matches 1 run tellraw @a {"text":"xianxia entity displays loaded"}

scoreboard objectives add xx_hud_id dummy
scoreboard objectives add xx_hud_ttl dummy
scoreboard objectives add xx_hud_hp dummy

# Health display reads Health * 1000, then ceils back to whole health points.
scoreboard players set #health_scale xx_hud_hp 1000

# Reload cleanup. Owner IDs remain on living entities so displays can be recreated safely.
kill @e[type=minecraft:text_display,tag=xianxia_entity_display]
