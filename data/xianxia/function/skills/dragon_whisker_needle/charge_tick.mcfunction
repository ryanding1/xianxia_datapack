# Cancel if the player releases shift, releases right-click, or swaps the book away.
execute unless score @s dwn_combo_now matches 1 run function xianxia:skills/dragon_whisker_needle/charge_cancel

execute if score @s dwn_combo_now matches 1 run scoreboard players add @s dwn_charge 1

execute if score @s dwn_charge matches 1 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1.0 0.5 0
execute if score @s dwn_charge matches 3 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1.0 0.75 0

execute if score @s dwn_charge >= #dwn_charge_ticks fc_cfg run function xianxia:skills/dragon_whisker_needle/fire
