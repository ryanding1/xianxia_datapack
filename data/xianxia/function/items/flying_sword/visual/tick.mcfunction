# Read actual creative-style flight state.
execute store result score @s fc_is_flying run data get entity @s abilities.flying

# While actually flying, show the sword and particles.
execute if score @s fc_is_flying matches 1 run function xianxia:items/flying_sword/visual/while_flying

# If not flying, remove this player's sword.
execute unless score @s fc_is_flying matches 1 run function xianxia:items/flying_sword/visual/cleanup