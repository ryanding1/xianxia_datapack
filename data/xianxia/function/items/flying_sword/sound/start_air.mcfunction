tag @s add flying_sword_was_airborne

playsound minecraft:entity.breeze.idle_air master @s ~ ~ ~ 0.5 1.2 1

scoreboard players set @s fc_loop_timer 0
function xianxia:items/flying_sword/sound/schedule_next with storage xianxia:items/flying_sword/config