# Start cooldown immediately to prevent sound/visual spam.
# If you want cooldown only on successful parries, move this line into parry/success.mcfunction.
scoreboard players operation @s fs_parry_cd = #parry_cooldown fc_cfg

# Consume the input so this parry cannot also become a cooldown-denied attempt.
scoreboard players set @s fs_use_edge 0
scoreboard players set @s fs_parry_buffer 0

scoreboard players set @s fs_parry_hits 0
tag @s add flying_sword_parry_owner

# Initial parry sound/visual.
playsound minecraft:item.armor.equip_iron master @s ~ ~ ~ 1.2 1.0 0
particle minecraft:explosion ~ ~1 ~ 1 1 1 0 5 force @a

# Try to parry projectiles immediately.
function xianxia:items/flying_sword/parry/apply_to_projectiles

# Only successful projectile parries start the freeze/invulnerability window.
execute if score @s fs_parry_hits matches 1.. run function xianxia:items/flying_sword/parry/success

tag @s remove flying_sword_parry_owner