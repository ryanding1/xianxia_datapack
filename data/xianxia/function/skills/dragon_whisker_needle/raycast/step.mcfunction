execute if block ~ ~ ~ #xianxia:dragon_whisker_needle_passable run function xianxia:skills/dragon_whisker_needle/raycast/damage_entities with storage xianxia:skills/dragon_whisker_needle/config
execute if block ~ ~ ~ #xianxia:dragon_whisker_needle_passable positioned ~ ~-0.5 ~ if block ~ ~ ~ #xianxia:dragon_whisker_needle_passable run function xianxia:skills/dragon_whisker_needle/raycast/damage_entities with storage xianxia:skills/dragon_whisker_needle/config
execute if block ~ ~ ~ #xianxia:dragon_whisker_needle_passable positioned ~ ~-1.0 ~ if block ~ ~ ~ #xianxia:dragon_whisker_needle_passable run function xianxia:skills/dragon_whisker_needle/raycast/damage_entities with storage xianxia:skills/dragon_whisker_needle/config
execute if block ~ ~ ~ #xianxia:dragon_whisker_needle_passable positioned ~ ~-1.5 ~ if block ~ ~ ~ #xianxia:dragon_whisker_needle_passable run function xianxia:skills/dragon_whisker_needle/raycast/damage_entities with storage xianxia:skills/dragon_whisker_needle/config
execute if block ~ ~ ~ #xianxia:dragon_whisker_needle_passable positioned ~ ~-2.0 ~ if block ~ ~ ~ #xianxia:dragon_whisker_needle_passable run function xianxia:skills/dragon_whisker_needle/raycast/damage_entities with storage xianxia:skills/dragon_whisker_needle/config
execute if block ~ ~ ~ #xianxia:dragon_whisker_needle_passable positioned ~ ~-2.5 ~ if block ~ ~ ~ #xianxia:dragon_whisker_needle_passable run function xianxia:skills/dragon_whisker_needle/raycast/damage_entities with storage xianxia:skills/dragon_whisker_needle/config
execute if block ~ ~ ~ #xianxia:dragon_whisker_needle_passable run scoreboard players add @s dwn_hit_distance 1

# Emit the throw sound along the hitscan so nearby players hear the needle pass.
execute if score @s dwn_hit_distance matches 1 run playsound minecraft:item.trident.throw master @a[distance=..24] ~ ~ ~ 1.0 2.0 0
execute if score @s dwn_hit_distance matches 17 run playsound minecraft:item.trident.throw master @a[distance=..24] ~ ~ ~ 1.0 2.0 0
execute if score @s dwn_hit_distance matches 33 run playsound minecraft:item.trident.throw master @a[distance=..24] ~ ~ ~ 1.0 2.0 0
execute if score @s dwn_hit_distance matches 49 run playsound minecraft:item.trident.throw master @a[distance=..24] ~ ~ ~ 1.0 2.0 0
execute if score @s dwn_hit_distance matches 65 run playsound minecraft:item.trident.throw master @a[distance=..24] ~ ~ ~ 1.0 2.0 0
execute if score @s dwn_hit_distance matches 81 run playsound minecraft:item.trident.throw master @a[distance=..24] ~ ~ ~ 1.0 2.0 0
execute if score @s dwn_hit_distance matches 97 run playsound minecraft:item.trident.throw master @a[distance=..24] ~ ~ ~ 1.0 2.0 0
execute if score @s dwn_hit_distance matches 113 run playsound minecraft:item.trident.throw master @a[distance=..24] ~ ~ ~ 1.0 2.0 0
execute if score @s dwn_hit_distance matches 128 run playsound minecraft:item.trident.throw master @a[distance=..24] ~ ~ ~ 1.0 2.0 0

execute if block ~ ~ ~ #xianxia:dragon_whisker_needle_passable if score @s dwn_hit_distance < #dwn_range_blocks fc_cfg positioned ^ ^ ^1 run function xianxia:skills/dragon_whisker_needle/raycast/step
