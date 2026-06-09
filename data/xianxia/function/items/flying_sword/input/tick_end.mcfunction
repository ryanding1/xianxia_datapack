# Decay held input.
scoreboard players remove @s[scores={fs_use_held=1..}] fs_use_held 1
execute unless score @s fs_use_held matches 1.. run scoreboard players set @s fs_use_held 0

# Reset one-tick edge input.
scoreboard players set @s fs_use_edge 0