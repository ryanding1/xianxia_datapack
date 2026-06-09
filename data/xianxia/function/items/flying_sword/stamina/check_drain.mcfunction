tag @s remove flying_sword_can_drain

# Default drain rule: player is not on the ground.
# execute unless entity @s[nbt={OnGround:1b}] run tag @s add flying_sword_can_drain

# drain only when player is flying
execute if score @s fc_is_flying matches 1 run tag @s add flying_sword_can_drain