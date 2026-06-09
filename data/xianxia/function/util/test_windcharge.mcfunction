# Temporary hit target below the player
summon minecraft:armor_stand ~ ~-1.6 ~ {Tags:["wc_trigger"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Small:1b}

# Use breeze_wind_charge for a larger wind burst than the player-thrown wind_charge
summon minecraft:breeze_wind_charge ~ ~-0.45 ~ {Tags:["wc_blast"],Motion:[0.0d,-1.2d,0.0d],Silent:1b}

kill @e[type=minecraft:armor_stand,tag=wc_trigger]
kill @e[type=minecraft:breeze_wind_charge,tag=wc_blast]