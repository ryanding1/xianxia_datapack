scoreboard players operation @s xx_deaths_seen = @s xx_deaths

scoreboard players set @s xx_posture 0
scoreboard players set @s xx_post_cd 0
scoreboard players set @s xx_post_decay 0
scoreboard players set @s xx_post_break 0
scoreboard players set @s xx_post_delta 0
scoreboard players set @s xx_post_bucket 0
scoreboard players set @s xx_post_handled 0
scoreboard players set @s xx_post_prev 0
scoreboard players operation @s xx_post_idle = #display_idle_ticks xx_post_cfg

function xianxia:parry/cancel
function xianxia:posture/player/jump_unlock
effect clear @s minecraft:slowness
effect clear @s minecraft:weakness
effect clear @s minecraft:mining_fatigue
scoreboard players set @s fs_dash_request 0
scoreboard players set @s fs_dash_buffer 0

tag @s remove xianxia_posture_broken
function xianxia:posture/display/0
