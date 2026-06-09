# Rising-edge detection for Sneak.
scoreboard players set @s fs_sneak_edge 0

execute if predicate xianxia:input/sneak unless score @s fs_sneak_held matches 1.. run scoreboard players set @s fs_sneak_edge 1

execute if predicate xianxia:input/sneak run scoreboard players set @s fs_sneak_held 1
execute unless predicate xianxia:input/sneak run scoreboard players set @s fs_sneak_held 0