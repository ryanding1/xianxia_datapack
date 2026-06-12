scoreboard players set @s xx_post_delta 0

execute if score @s xx_hp >= #hp_7_5_hearts xx_post_cfg run scoreboard players operation @s xx_post_delta = #decay_high xx_post_cfg
execute if score @s xx_hp < #hp_7_5_hearts xx_post_cfg if score @s xx_hp >= #hp_5_hearts xx_post_cfg run scoreboard players operation @s xx_post_delta = #decay_mid xx_post_cfg
execute if score @s xx_hp < #hp_5_hearts xx_post_cfg if score @s xx_hp >= #hp_2_5_hearts xx_post_cfg run scoreboard players operation @s xx_post_delta = #decay_low xx_post_cfg

execute unless score @s xx_post_delta matches 1.. run scoreboard players set @s xx_post_decay 0
execute if score @s xx_post_delta matches 1.. unless score @s xx_post_decay matches 1.. run scoreboard players operation @s xx_post_decay = @s xx_post_delta
execute if score @s xx_post_delta matches 1.. run scoreboard players remove @s xx_post_decay 1
execute if score @s xx_post_delta matches 1.. unless score @s xx_post_decay matches 1.. run function xianxia:posture/player/decay_one
