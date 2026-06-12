execute if score #enabled debug matches 1 run tellraw @a {"text":"xianxia flying sword skill Soaring Petal Technique loaded"}

scoreboard objectives add fs_spt_charge dummy
scoreboard objectives add fs_spt_state dummy
scoreboard objectives add fs_spt_dist dummy
scoreboard objectives add fs_spt_next dummy
scoreboard objectives add fs_spt_age dummy
scoreboard objectives add fs_spt_loop dummy

scoreboard objectives add fs_spt_recall_armed dummy
scoreboard objectives add fs_spt_recall_active dummy
scoreboard objectives add fs_spt_freeze_armed dummy

# Charge time in ticks before the sword is released.
scoreboard players set #spt_charge_ticks fc_cfg 10

# Sword speed in thousandths of a block per tick.
# 500 = 0.5 blocks/tick = 10 blocks/sec.
scoreboard players set #spt_speed_milli fc_cfg 500

# Max range in thousandths of a block.
# 10000 = 10 blocks.
scoreboard players set #spt_max_dist fc_cfg 10000

# Sound loop timing.
scoreboard players set #spt_elytra_loop_ticks fc_cfg 40

# Damage aura values.
data modify storage xianxia:items/flying_sword/skills/soaring_petal_technique/config spt_damage set value 2.0
data modify storage xianxia:items/flying_sword/skills/soaring_petal_technique/config spt_damage_radius set value 3

# Clean up old Soaring Petal entities after /reload.
kill @e[type=minecraft:marker,tag=flying_sword_spt_target]
kill @e[type=minecraft:item_display,tag=flying_sword_spt_blade]

# Migration cleanup for entities from the old Flying Sword throw path.
kill @e[type=minecraft:marker,tag=flying_sword_target]
kill @e[type=minecraft:item_display,tag=flying_sword_thrown]
