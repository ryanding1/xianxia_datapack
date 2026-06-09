tag @s remove flying_sword_can_refill

# Default refill rule: player is on the ground.
execute if entity @s[nbt={OnGround:1b}] run tag @s add flying_sword_can_refill