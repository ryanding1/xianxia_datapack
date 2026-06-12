execute if score #enabled debug matches 1 run tellraw @a {"text":"xianxia item flying sword loaded"}

scoreboard objectives add fc_stamina dummy
scoreboard objectives add fc_stam_delay dummy
scoreboard objectives add fc_cfg dummy

# ===== Stamina Config =====
# Level 30 gives usable XP points 0..111.
scoreboard players set #max fc_cfg 111

# Stamina lost per tick while draining.
# 1 point/tick = 111 ticks = about 5.55 seconds.
scoreboard players set #drain fc_cfg 1

# Ticks after stamina is spent before refill can resume.
scoreboard players set #stam_regen_delay fc_cfg 40

# XP level used for the stamina display.
data modify storage xianxia:items/flying_sword/config xp_level set value 30

# Creative flight speed.
# 0.05f is normal creative flight speed.
data modify storage xianxia:items/flying_sword/config fly_speed set value 0.05f

scoreboard objectives add fc_sound_timer dummy
scoreboard objectives add fc_sound_choice dummy

# Random Breeze idle/slide sound interval, in ticks.
# 20 ticks = 1 second. This gives 1.5s to 2.5s.
data modify storage xianxia:items/flying_sword/config sound_interval_min set value 30
data modify storage xianxia:items/flying_sword/config sound_interval_max set value 50

scoreboard objectives add fc_is_flying dummy
scoreboard objectives add fc_loop_timer dummy

scoreboard players set #elytra_loop_ticks fc_cfg 40

# SWORD STUFF ##################################################################

scoreboard objectives add fc_id dummy
scoreboard objectives add fc_ttl dummy

scoreboard players add #next fc_id 0
scoreboard players set #this fc_id 0

# Clean up old sword displays after /reload.
kill @e[type=minecraft:item_display,tag=flying_sword_sword]

scoreboard objectives add fc_calc dummy

# Used for scaled rotation math.
scoreboard players set #thousand fc_calc 1000

# Constant yaw offset in degrees * 1000.
# -45 degrees = -45000
scoreboard players set #sword_yaw_offset fc_calc -45000

# PARRY ########################################################################

scoreboard objectives add fs_parry_cd dummy
scoreboard objectives add fs_parry_active dummy
scoreboard objectives add fs_parry_held dummy
scoreboard objectives add fs_parry_edge dummy
scoreboard objectives add fs_parry_buffer dummy
scoreboard objectives add fs_parry_hits dummy

# 20 ticks = 1 second.
scoreboard players set #parry_cooldown fc_cfg 20

# Active parry window after a successful projectile parry.
scoreboard players set #parry_active_ticks fc_cfg 10

# THROW / CONTROL INPUT ########################################################

scoreboard objectives add fs_use_held dummy
scoreboard objectives add fs_use_edge dummy

scoreboard objectives add fs_throw_charge dummy
scoreboard objectives add fs_throw_state dummy
scoreboard objectives add fs_throw_dist dummy
scoreboard objectives add fs_throw_next dummy
scoreboard objectives add fs_throw_age dummy
scoreboard objectives add fs_throw_loop dummy

scoreboard objectives add fs_sneak_held dummy
scoreboard objectives add fs_sneak_edge dummy
scoreboard objectives add fs_recall_armed dummy
scoreboard objectives add fs_recall_active dummy
scoreboard objectives add fs_freeze_armed dummy

# DASH / F-SWAP LOCK ###########################################################

scoreboard objectives add fs_dash_cd dummy
scoreboard objectives add fs_dash_ticks dummy
scoreboard objectives add fs_dash_dir dummy
scoreboard objectives add fs_dash_request dummy
scoreboard objectives add fs_dash_invuln dummy

scoreboard objectives add fs_swap_mh_prev dummy

# Dash distance in thousandths of a block.
scoreboard players set #dash_distance_milli fc_cfg 5000

# Dash duration in ticks. The step size is distance / ticks.
scoreboard players set #dash_ticks fc_cfg 5
scoreboard players operation #dash_step_milli fc_cfg = #dash_distance_milli fc_cfg
scoreboard players operation #dash_step_milli fc_cfg /= #dash_ticks fc_cfg

scoreboard players set #dash_cost fc_cfg 10
scoreboard players set #dash_cooldown fc_cfg 10
scoreboard players set #dash_invuln_ticks fc_cfg 5

# Throw charge time.
scoreboard players set #throw_charge_ticks fc_cfg 10

# Sword speed in thousandths of a block per tick.
# 250 = 0.25 blocks/tick = 5 blocks/sec.
scoreboard players set #throw_speed_milli fc_cfg 500

# Max range in thousandths of a block.
# 20000 = 20 blocks.
scoreboard players set #throw_max_dist fc_cfg 10000

# Sound loop timing.
scoreboard players set #throw_elytra_loop_ticks fc_cfg 40

# Macro/config values.
data modify storage xianxia:items/flying_sword/config throw_speed set value 0.25
data modify storage xianxia:items/flying_sword/config throw_damage set value 2.0
data modify storage xianxia:items/flying_sword/config throw_damage_radius set value 3

#cleanup?
kill @e[type=minecraft:marker,tag=flying_sword_target]
kill @e[type=minecraft:item_display,tag=flying_sword_thrown]
kill @e[type=minecraft:armor_stand,tag=flying_sword_dash_swap_temp]
kill @e[type=minecraft:armor_stand,tag=flying_sword_swap_lock_temp]

# FLY-THROUGH DAMAGE ###########################################################

scoreboard objectives add fs_fly_dmg_ttl dummy

# Damage cooldown/tag lifetime in ticks.
# 40 ticks = 2 seconds.
scoreboard players set #fly_thru_ttl fc_cfg 40

# Damage dealt when flying through an entity.
data modify storage xianxia:items/flying_sword/config fly_thru_damage set value 4.0

# Damage radius around the mounted flying sword.
data modify storage xianxia:items/flying_sword/config fly_thru_radius set value 2.0

# Offset from the display entity's command position to the visible sword position.
# If your mounted sword display is visually translated down by -1.35, use -1.35.
# If damage feels too low/high, tune this.
data modify storage xianxia:items/flying_sword/config fly_thru_y_offset set value -1.35
