scoreboard players operation @s fc_stamina -= #dwn_cost fc_cfg
execute if score @s fc_stamina matches ..-1 run scoreboard players set @s fc_stamina 0
scoreboard players operation @s fc_stam_delay = #stam_regen_delay fc_cfg
function xianxia:items/flying_sword/flying/stamina/apply_xp

scoreboard players operation @s dwn_cd = #dwn_cooldown fc_cfg
scoreboard players set @s dwn_hit_distance 0

execute unless score @s fc_id matches 1.. run function xianxia:items/flying_sword/flying/visual/assign_id

tag @s add dragon_whisker_needle_owner_this
tag @e[tag=dragon_whisker_needle_hit] remove dragon_whisker_needle_hit

execute rotated as @s anchored eyes positioned ^ ^ ^1 run function xianxia:skills/dragon_whisker_needle/raycast/step
execute if score @s dwn_hit_distance matches 0 rotated as @s anchored eyes positioned ^ ^ ^1 run playsound minecraft:item.trident.throw master @a[distance=..24] ~ ~ ~ 1.0 2.0 0
function xianxia:skills/dragon_whisker_needle/visual/summon

tag @e[tag=dragon_whisker_needle_hit] remove dragon_whisker_needle_hit
tag @s remove dragon_whisker_needle_owner_this

scoreboard players add @s dwn_shots_fired 1
scoreboard players operation @s dwn_fire_gap = #dwn_shot_gap_ticks fc_cfg
