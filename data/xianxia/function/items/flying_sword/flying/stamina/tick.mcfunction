# SWORD STUFF
scoreboard players remove @e[type=minecraft:item_display,tag=flying_sword_sword] fc_ttl 1
kill @e[type=minecraft:item_display,tag=flying_sword_sword,scores={fc_ttl=..0}]

# Initialize stamina if this player does not have a valid value yet.
execute unless score @s fc_stamina matches 0.. run scoreboard players operation @s fc_stamina = #max fc_cfg
execute unless score @s fc_stam_delay matches 0.. run scoreboard players set @s fc_stam_delay 0

# Check refill/drain conditions.
function xianxia:items/flying_sword/flying/stamina/check_drain

# Drain while stamina is being used. This also refreshes fc_stam_delay.
execute if entity @s[tag=flying_sword_can_drain] if score @s fc_stamina matches 1.. run function xianxia:items/flying_sword/flying/stamina/drain

# Refill only after stamina has not been used for the configured delay.
scoreboard players remove @s[scores={fc_stam_delay=1..}] fc_stam_delay 1
execute unless entity @s[tag=flying_sword_can_drain] unless score @s fc_stam_delay matches 1.. run function xianxia:items/flying_sword/flying/stamina/refill

# Clamp to 0..max.
execute if score @s fc_stamina matches ..-1 run scoreboard players set @s fc_stamina 0
execute if score @s fc_stamina > #max fc_cfg run scoreboard players operation @s fc_stamina = #max fc_cfg

# Update the XP bar display.
function xianxia:items/flying_sword/flying/stamina/apply_xp

# Clean up temporary condition tags.
tag @s remove flying_sword_can_drain
