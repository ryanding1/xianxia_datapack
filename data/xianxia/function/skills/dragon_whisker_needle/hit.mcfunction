tag @s add dragon_whisker_needle_hit

$damage @s $(dwn_damage) minecraft:dragon_breath by @a[tag=dragon_whisker_needle_owner_this,limit=1,sort=nearest]
playsound minecraft:item.trident.hit master @a[distance=..16] ~ ~ ~ 1.0 1.5 0
