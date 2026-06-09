# SWORD STUFF
scoreboard players remove @e[type=minecraft:item_display,tag=flying_sword_sword] fc_ttl 1
kill @e[type=minecraft:item_display,tag=flying_sword_sword,scores={fc_ttl=..0}]

# Initialize stamina if this player does not have a valid value yet.
execute unless score @s fc_stamina matches 0.. run scoreboard players operation @s fc_stamina = #max fc_cfg

# Check refill/drain conditions.
function xianxia:items/flying_sword/stamina/check_refill
function xianxia:items/flying_sword/stamina/check_drain

# Refill first. This means landing instantly restores stamina.
execute if entity @s[tag=flying_sword_can_refill] run function xianxia:items/flying_sword/stamina/refill

# Drain only when the drain condition is true and the refill condition is false.
execute unless entity @s[tag=flying_sword_can_refill] if entity @s[tag=flying_sword_can_drain] if score @s fc_stamina matches 1.. run function xianxia:items/flying_sword/stamina/drain

# Clamp to 0..max.
execute if score @s fc_stamina matches ..-1 run scoreboard players set @s fc_stamina 0
execute if score @s fc_stamina > #max fc_cfg run scoreboard players operation @s fc_stamina = #max fc_cfg

# Update the XP bar display.
function xianxia:items/flying_sword/stamina/apply_xp

# Clean up temporary condition tags.
tag @s remove flying_sword_can_refill
tag @s remove flying_sword_can_drain