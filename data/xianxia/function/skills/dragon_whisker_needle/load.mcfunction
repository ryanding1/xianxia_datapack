execute if score #enabled debug matches 1 run tellraw @a {"text":"xianxia skill Dragon Whisker Needle loaded"}

scoreboard objectives add dwn_use_held dummy
scoreboard objectives add dwn_combo_now dummy
scoreboard objectives add dwn_combo_held dummy
scoreboard objectives add dwn_combo_edge dummy
scoreboard objectives add dwn_charge dummy
scoreboard objectives add dwn_cd dummy
scoreboard objectives add dwn_hit_distance dummy
scoreboard objectives add dwn_visual_age dummy

# Charge time in ticks before the needle fires.
scoreboard players set #dwn_charge_ticks fc_cfg 5

# Stamina spent when the needle fires.
scoreboard players set #dwn_cost fc_cfg 10

# Cooldown after firing, in ticks.
scoreboard players set #dwn_cooldown fc_cfg 0

# Hitscan range, in blocks.
scoreboard players set #dwn_range_blocks fc_cfg 128

# Damage dealt by one needle hit.
data modify storage xianxia:skills/dragon_whisker_needle/config dwn_damage set value 2.0

# Radius around each ray sample used to approximate entity hitboxes.
data modify storage xianxia:skills/dragon_whisker_needle/config dwn_hit_radius set value 0.65

# Clean up old displays and transient hit tags after /reload.
kill @e[type=minecraft:block_display,tag=dragon_whisker_needle_display]
tag @e[tag=dragon_whisker_needle_hit] remove dragon_whisker_needle_hit
tag @a[tag=dragon_whisker_needle_owner_this] remove dragon_whisker_needle_owner_this
tag @a[tag=dragon_whisker_needle_has_book] remove dragon_whisker_needle_has_book
