# Cooldown countdown.
scoreboard players remove @s[scores={fs_parry_cd=1..}] fs_parry_cd 1

# Decay the feather-to-sword coyote buffer.
scoreboard players remove @s[scores={fs_parry_buffer=1..}] fs_parry_buffer 1

# If right-click is held while the mainhand Flying Sword is still feather-mode,
# keep a tiny buffer alive. When it turns into sword-mode, this can trigger ONE parry.
#
# Sneak is excluded so sneak + right-click can be reserved for throw charging.
execute if score @s fs_use_held matches 1.. unless predicate xianxia:input/sneak if items entity @s weapon.mainhand minecraft:feather[custom_data~{flying_sword:1b}] run scoreboard players set @s fs_parry_buffer 3


# Active parry window.
execute if score @s fs_parry_active matches 1.. run function xianxia:items/flying_sword/parry/active_tick
scoreboard players remove @s[scores={fs_parry_active=1..}] fs_parry_active 1

# End the parry state when the timer reaches 0.
execute if entity @s[tag=flying_sword_parrying] unless score @s fs_parry_active matches 1.. run function xianxia:items/flying_sword/parry/end with storage xianxia:items/flying_sword/config


# Cooldown denial sound.
# Only happens on a NEW right-click press with sword mode.
# Does not happen from held input, coyote buffer, or sneak + right-click.
execute if score @s fs_use_edge matches 1 if score @s fs_parry_cd matches 1.. unless predicate xianxia:input/sneak if items entity @s weapon.mainhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1.0 0.8 0


# Normal parry:
# new right-click press + sword mode + cooldown ready + not sneaking.
execute if score @s fs_use_edge matches 1 unless score @s fs_parry_cd matches 1.. unless score @s fs_parry_active matches 1.. unless predicate xianxia:input/sneak if items entity @s weapon.mainhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] run function xianxia:items/flying_sword/parry/attempt

# Coyote parry:
# right-click was held in feather mode, then the item became sword mode.
# This triggers once, then parry/attempt consumes the buffer.
execute if score @s fs_parry_buffer matches 1.. unless score @s fs_parry_cd matches 1.. unless score @s fs_parry_active matches 1.. unless predicate xianxia:input/sneak if items entity @s weapon.mainhand minecraft:diamond_sword[custom_data~{flying_sword:1b}] run function xianxia:items/flying_sword/parry/attempt