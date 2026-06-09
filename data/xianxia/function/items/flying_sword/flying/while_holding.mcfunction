function xianxia:items/flying_sword/flying/stamina/tick

execute if score @s fc_stamina matches 1.. run function xianxia:items/flying_sword/flying/start_real_flight with storage xianxia:items/flying_sword/config
execute unless score @s fc_stamina matches 1.. run function xianxia:items/flying_sword/flying/no_stamina

function xianxia:items/flying_sword/flying/sound/tick
function xianxia:items/flying_sword/flying/visual/tick

# Sword when grounded/not flying, feather while actually flying.
function xianxia:items/flying_sword/inventory/update_form