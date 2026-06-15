# Decay held input.
scoreboard players remove @s[scores={sb_use_held=1..}] sb_use_held 1
execute unless score @s sb_use_held matches 1.. run scoreboard players set @s sb_use_held 0

# Reset one-tick edge input.
scoreboard players set @s sb_use_edge 0
