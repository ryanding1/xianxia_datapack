advancement revoke @s only xianxia:skills/skillbooks/right_click

execute unless score @s sb_use_held matches 1.. run scoreboard players set @s sb_use_edge 1

# Held input lasts briefly and is refreshed every tick while a skillbook is used.
scoreboard players set @s sb_use_held 2
