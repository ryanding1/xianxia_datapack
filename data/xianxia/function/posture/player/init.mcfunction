scoreboard players set @s xx_hp_seen 1
scoreboard players operation @s xx_hp_prev = @s xx_hp
scoreboard players operation @s xx_hurt_prev = @s xx_hurt
scoreboard players operation @s xx_post_max = #posture_max xx_post_cfg
scoreboard players operation @s xx_post_delay = #posture_delay xx_post_cfg
scoreboard players operation @s xx_post_prev = @s xx_posture
scoreboard players operation @s xx_post_idle = #display_idle_ticks xx_post_cfg
scoreboard players operation @s xx_deaths_seen = @s xx_deaths
