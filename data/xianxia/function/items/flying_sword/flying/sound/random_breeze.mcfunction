execute store result score @s fc_sound_choice run random value 1..3

execute if score @s fc_sound_choice matches 1 run playsound minecraft:entity.breeze.idle_ground master @s ~ ~ ~ 1.8 1.0 0
execute if score @s fc_sound_choice matches 2 run playsound minecraft:entity.breeze.slide master @s ~ ~ ~ 1.8 1.0 0
execute if score @s fc_sound_choice matches 3 run playsound minecraft:entity.breeze.land master @s ~ ~ ~ 1.8 1.0 0


function xianxia:items/flying_sword/flying/sound/schedule_next with storage xianxia:items/flying_sword/config