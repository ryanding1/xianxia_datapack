execute if score #enabled debug matches 1 run tellraw @a {"text":"xianxia skill Dragon Whisker Needle loaded"}

scoreboard objectives add dwn_use_held dummy
scoreboard objectives add dwn_combo_now dummy
scoreboard objectives add dwn_combo_held dummy
scoreboard objectives add dwn_combo_edge dummy
scoreboard objectives add dwn_charge dummy
scoreboard objectives add dwn_cd dummy
scoreboard objectives add dwn_hit_distance dummy
scoreboard objectives add dwn_visual_age dummy
scoreboard objectives add dwn_shots_fired dummy
scoreboard objectives add dwn_fire_gap dummy

# Charge time in ticks before the needle fires.
scoreboard players set #dwn_charge_ticks fc_cfg 5

# Stamina spent by each needle fired.
scoreboard players set #dwn_cost fc_cfg 3

# Maximum needles fired per charge. Ignored if #dwn_infinite is 1.
scoreboard players set #dwn_max_shots fc_cfg 3

# 0 = stop after #dwn_max_shots; 1 = fire until released or out of stamina.
scoreboard players set #dwn_infinite fc_cfg 0

# Ticks between needles after the first shot.
scoreboard players set #dwn_shot_gap_ticks fc_cfg 2

# Cooldown after firing, in ticks.
scoreboard players set #dwn_cooldown fc_cfg 0

# Hitscan range, in blocks.
scoreboard players set #dwn_range_blocks fc_cfg 128

# Damage dealt by one needle hit.
data modify storage xianxia:skills/dragon_whisker_needle/config dwn_damage set value 0.5

# Radius around each ray sample used to approximate entity hitboxes.
data modify storage xianxia:skills/dragon_whisker_needle/config dwn_hit_radius set value 0.65

# Clean up old displays and transient hit tags after /reload.
kill @e[type=minecraft:block_display,tag=dragon_whisker_needle_display]
tag @e[tag=dragon_whisker_needle_hit] remove dragon_whisker_needle_hit
tag @a[tag=dragon_whisker_needle_owner_this] remove dragon_whisker_needle_owner_this
tag @a[tag=dragon_whisker_needle_has_book] remove dragon_whisker_needle_has_book
