scoreboard players remove @s[scores={fs_dash_ticks=1..}] fs_dash_ticks 1
execute unless score @s fs_dash_ticks matches 1.. run scoreboard players set @s fs_dash_ticks 0
