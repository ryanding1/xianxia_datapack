# Before the first needle, release cancels for free. After at least one needle, release ends the sequence and starts cooldown.
execute unless score @s dwn_combo_now matches 1 if score @s dwn_shots_fired matches 1.. run function xianxia:skills/dragon_whisker_needle/finish
execute unless score @s dwn_combo_now matches 1 unless score @s dwn_shots_fired matches 1.. run function xianxia:skills/dragon_whisker_needle/charge_cancel

execute if score @s dwn_combo_now matches 1 run scoreboard players add @s dwn_charge 1

execute if score @s dwn_charge matches 1 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1.0 0.5 0
execute if score @s dwn_charge matches 3 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1.0 0.75 0

execute if score @s dwn_combo_now matches 1 if score @s dwn_shots_fired matches 1.. run scoreboard players remove @s[scores={dwn_fire_gap=1..}] dwn_fire_gap 1
execute if score @s dwn_combo_now matches 1 if score @s dwn_shots_fired matches 1.. if score @s dwn_fire_gap matches ..0 run function xianxia:skills/dragon_whisker_needle/fire

execute if score @s dwn_combo_now matches 1 if score @s dwn_shots_fired matches 0 if score @s dwn_charge >= #dwn_charge_ticks fc_cfg run function xianxia:skills/dragon_whisker_needle/fire

execute if score @s dwn_charge matches 1.. unless score #dwn_infinite fc_cfg matches 1.. if score @s dwn_shots_fired >= #dwn_max_shots fc_cfg run function xianxia:skills/dragon_whisker_needle/finish
