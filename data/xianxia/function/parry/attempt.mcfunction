execute if score @s xx_parry_cd matches 1.. run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1.0 0.8 0
execute unless score @s xx_parry_cd matches 1.. run function xianxia:parry/start
