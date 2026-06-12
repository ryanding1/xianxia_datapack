# Stamina may not exist if this is the first sword action after /reload.
execute unless score @s fc_stamina matches 0.. run scoreboard players operation @s fc_stamina = #max fc_cfg

# Dash only if exactly one of forward/backward is currently held.
execute if predicate xianxia:input/forward unless predicate xianxia:input/backward run function xianxia:items/flying_sword/dash/try_forward
execute if predicate xianxia:input/backward unless predicate xianxia:input/forward run function xianxia:items/flying_sword/dash/try_backward
