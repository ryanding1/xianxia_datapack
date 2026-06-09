# Runs before active flying swords process damage this tick.

# Count down existing fly-through immunity.
scoreboard players remove @e[tag=fly_thru_dmg] fs_fly_dmg_ttl 1

# This will be re-added this tick by any active flying sword that is still near the entity.
tag @e[tag=fly_thru_dmg] remove fly_thru_dmg_in_range