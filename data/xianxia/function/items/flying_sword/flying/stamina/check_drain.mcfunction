tag @s remove flying_sword_can_drain

# Drain only while the player is using creative-style flight.
execute if score @s fc_is_flying matches 1 run tag @s add flying_sword_can_drain
