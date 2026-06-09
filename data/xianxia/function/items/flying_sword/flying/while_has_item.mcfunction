# Stamina first.
function xianxia:items/flying_sword/flying/stamina/tick

# Enable/disable real flight based on stamina.
execute if score @s fc_stamina matches 1.. run function xianxia:items/flying_sword/flying/start_real_flight with storage xianxia:items/flying_sword/config
execute unless score @s fc_stamina matches 1.. run function xianxia:items/flying_sword/flying/no_stamina

# Flying-mode side systems.
function xianxia:items/flying_sword/flying/sound/tick
function xianxia:items/flying_sword/flying/visual/tick

# Damage enemies when actually flying through them.
execute store result score @s fc_is_flying run data get entity @s abilities.flying
execute if score @s fc_is_flying matches 1 run function xianxia:items/flying_sword/flying/fly_through_damage/source

# Update sword/feather inventory form.
function xianxia:items/flying_sword/inventory/update_form