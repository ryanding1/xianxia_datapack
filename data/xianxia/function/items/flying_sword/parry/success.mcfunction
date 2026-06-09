tag @s add flying_sword_parrying

scoreboard players operation @s fs_parry_active = #parry_active_ticks fc_cfg

# Hook for future effects.
function xianxia:items/flying_sword/parry/on_success