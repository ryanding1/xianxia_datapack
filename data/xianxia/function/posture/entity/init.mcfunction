# Run as a non-player entity after summoning to opt it into posture display/combat scores.
scoreboard players set @s xx_posture 0
scoreboard players operation @s xx_post_max = #posture_max xx_post_cfg
scoreboard players set @s xx_post_prev 0
scoreboard players set @s xx_flash 0
