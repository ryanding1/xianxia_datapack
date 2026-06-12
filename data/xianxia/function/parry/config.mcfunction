# Parry timing uses Sekiro-style repeated taps: no long cooldown by default.
scoreboard players set #parry_cooldown xx_parry_cfg 0

# Ticks after a fresh right-click that count as a deflection.
scoreboard players set #deflect_ticks xx_parry_cfg 5

# Right-click held input grace. Keep this above 1 so same-tick cleanup does not clear active guards.
scoreboard players set #guard_hold_ticks xx_parry_cfg 2

# Lets flying sword feather-form right-clicks become one parry after form swap.
scoreboard players set #parry_buffer_ticks xx_parry_cfg 3
