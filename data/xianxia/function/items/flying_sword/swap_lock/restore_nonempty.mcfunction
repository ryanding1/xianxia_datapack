scoreboard players operation #this fc_id = @s fc_id

execute as @e[type=minecraft:armor_stand,tag=flying_sword_swap_lock_temp] if score @s fc_id = #this fc_id run kill @s

summon minecraft:armor_stand ~ ~ ~ {Tags:["flying_sword_swap_lock_temp","flying_sword_swap_lock_new"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Silent:1b}
scoreboard players operation @e[type=minecraft:armor_stand,tag=flying_sword_swap_lock_new,limit=1,sort=nearest] fc_id = @s fc_id
tag @e[type=minecraft:armor_stand,tag=flying_sword_swap_lock_new] remove flying_sword_swap_lock_new

tag @e[type=minecraft:armor_stand,tag=flying_sword_swap_lock_temp,tag=flying_sword_swap_lock_this] remove flying_sword_swap_lock_this
execute as @e[type=minecraft:armor_stand,tag=flying_sword_swap_lock_temp] if score @s fc_id = #this fc_id run tag @s add flying_sword_swap_lock_this

# Buffer the protected item, move the old offhand item back, then restore the protected item.
item replace entity @e[type=minecraft:armor_stand,tag=flying_sword_swap_lock_this,limit=1] weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @e[type=minecraft:armor_stand,tag=flying_sword_swap_lock_this,limit=1] weapon.mainhand

kill @e[type=minecraft:armor_stand,tag=flying_sword_swap_lock_this]
