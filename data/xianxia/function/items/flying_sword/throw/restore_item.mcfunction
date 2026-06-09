# If the controller is still in inventory/hotbar, turn it back into the sword.
execute if items entity @s container.* minecraft:stick[custom_data~{flying_sword_controller:1b}] run function xianxia:items/flying_sword/inventory/to_sword

# If no sword/feather exists after that, give a fresh one and normalize it into sword mode.
execute unless items entity @s container.* minecraft:diamond_sword[custom_data~{flying_sword:1b}] unless items entity @s container.* minecraft:feather[custom_data~{flying_sword:1b}] run give @s minecraft:feather[minecraft:item_name={"text":"Flying Sword","color":"aqua","italic":false},minecraft:custom_data={flying_sword:1b},minecraft:enchantment_glint_override=true] 1
execute if items entity @s container.* minecraft:feather[custom_data~{flying_sword:1b}] run function xianxia:items/flying_sword/inventory/to_sword