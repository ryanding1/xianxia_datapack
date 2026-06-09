# Read whether the player is currently in real creative-style flight.
execute store result score @s fc_is_flying run data get entity @s abilities.flying

# Just started flying.
execute if score @s fc_is_flying matches 1 unless entity @s[tag=flying_sword_was_airborne] run function xianxia:items/flying_sword/flying/sound/start_air

# Just stopped flying.
execute unless score @s fc_is_flying matches 1 if entity @s[tag=flying_sword_was_airborne] run function xianxia:items/flying_sword/flying/sound/end_air

# While flying.
execute if score @s fc_is_flying matches 1 run function xianxia:items/flying_sword/flying/sound/airborne