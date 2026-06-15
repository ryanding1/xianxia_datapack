function xianxia:skills/skillbooks/world_tick
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function xianxia:skills/skillbooks/tick
function xianxia:items/tick
function xianxia:skills/tick
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function xianxia:skills/skillbooks/input/tick_end
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function xianxia:parry/tick
function xianxia:bosses/tick
function xianxia:story/tick
function xianxia:areas/tick
execute as @a[gamemode=!spectator] at @s run function xianxia:posture/player/tick
function xianxia:entity_display/tick
