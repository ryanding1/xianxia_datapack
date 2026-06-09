playsound minecraft:entity.breeze.idle_air master @s ~ ~ ~ 0.5 0.9 1

tag @s remove flying_sword_was_airborne
scoreboard players reset @s fc_sound_timer
scoreboard players reset @s fc_sound_choice
scoreboard players reset @s fc_loop_timer

stopsound @s master minecraft:item.elytra.flying