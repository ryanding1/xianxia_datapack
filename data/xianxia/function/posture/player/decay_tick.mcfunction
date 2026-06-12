scoreboard players remove @s[scores={xx_post_cd=1..}] xx_post_cd 1
execute unless score @s xx_post_cd matches 1.. if score @s xx_posture matches 1.. run function xianxia:posture/player/decay
