# Read actual creative-style flight state.
execute store result score @s fc_is_flying run data get entity @s abilities.flying

# While actually flying, turn the sword into a feather.
execute if score @s fc_is_flying matches 1 if items entity @s container.* minecraft:diamond_sword[custom_data~{flying_sword:1b}] run function xianxia:items/flying_sword/inventory/to_feather

# While not flying, turn the feather back into an enchanted diamond sword.
execute unless score @s fc_is_flying matches 1 if items entity @s container.* minecraft:feather[custom_data~{flying_sword:1b}] run function xianxia:items/flying_sword/inventory/to_sword

# Refresh old sword-form items so existing saves gain shared parry metadata.
execute unless score @s fc_is_flying matches 1 unless items entity @s container.* minecraft:diamond_sword[custom_data~{flying_sword:1b,xianxia_parry_weapon:1b}] if items entity @s container.* minecraft:diamond_sword[custom_data~{flying_sword:1b}] run function xianxia:items/flying_sword/inventory/to_sword
