$execute at @s rotated as @s rotated ~ 0 positioned ^ ^ ^$(step) if block ~ ~ ~ #xianxia:dash_passable if block ~ ~1 ~ #xianxia:dash_passable run tp @s ~ ~ ~
$execute at @s rotated as @s rotated ~ 0 positioned ^ ^ ^$(step) unless block ~ ~ ~ #xianxia:dash_passable run scoreboard players set @s fs_dash_ticks 0
$execute at @s rotated as @s rotated ~ 0 positioned ^ ^ ^$(step) if block ~ ~ ~ #xianxia:dash_passable unless block ~ ~1 ~ #xianxia:dash_passable run scoreboard players set @s fs_dash_ticks 0
