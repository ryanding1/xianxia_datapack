# Initialize loop timer if missing.
execute unless score @s fc_loop_timer matches 0.. run scoreboard players set @s fc_loop_timer 0

# Count down.
scoreboard players remove @s fc_loop_timer 1

# When timer expires, play the Elytra flying sound once.
execute if score @s fc_loop_timer matches ..0 run playsound minecraft:item.elytra.flying master @s ~ ~ ~ 0.25 1.0 1

# Reset timer.
execute if score @s fc_loop_timer matches ..0 run scoreboard players operation @s fc_loop_timer = #elytra_loop_ticks fc_cfg


# Random Breeze sounds.
execute unless score @s fc_sound_timer matches 0.. run function xianxia:items/flying_sword/flying/sound/schedule_next with storage xianxia:items/flying_sword/config

scoreboard players remove @s fc_sound_timer 1

execute if score @s fc_sound_timer matches ..0 run function xianxia:items/flying_sword/flying/sound/random_breeze