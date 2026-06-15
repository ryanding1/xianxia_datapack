# Track whether this player currently has the skill book in inventory or either hand.
tag @s remove dragon_whisker_needle_has_book
execute if items entity @s container.* minecraft:written_book[custom_data~{skill:"dragon_whisker_needle"}] run tag @s add dragon_whisker_needle_has_book
execute if items entity @s weapon.mainhand minecraft:written_book[custom_data~{skill:"dragon_whisker_needle"}] run tag @s add dragon_whisker_needle_has_book
execute if items entity @s weapon.offhand minecraft:book[custom_data~{skill:"dragon_whisker_needle"}] run tag @s add dragon_whisker_needle_has_book

# Initialize stamina for players carrying the skill book.
execute if entity @s[tag=dragon_whisker_needle_has_book] unless score @s fc_stamina matches 0.. run scoreboard players operation @s fc_stamina = #max fc_cfg
execute if entity @s[tag=dragon_whisker_needle_has_book] unless score @s fc_stam_delay matches 0.. run scoreboard players set @s fc_stam_delay 0

# Let Dragon Whisker users without a flying sword still regenerate the shared stamina resource.
execute if entity @s[tag=dragon_whisker_needle_has_book] unless items entity @s container.* minecraft:diamond_sword[custom_data~{flying_sword:1b}] unless items entity @s container.* minecraft:feather[custom_data~{flying_sword:1b}] unless items entity @s container.* minecraft:stick[custom_data~{flying_sword_controller:1b}] run function xianxia:skills/dragon_whisker_needle/stamina_tick

# Cooldown timer.
scoreboard players remove @s[scores={dwn_cd=1..}] dwn_cd 1

# Current shift-right-click combo state. The readable book may be in mainhand;
# the offhand form is a regular book so it cannot open the reading GUI.
scoreboard players set @s dwn_combo_now 0
scoreboard players set @s dwn_combo_edge 0
execute if score @s sb_use_held matches 1.. if predicate xianxia:input/sneak if items entity @s weapon.mainhand minecraft:written_book[custom_data~{skill:"dragon_whisker_needle"}] run scoreboard players set @s dwn_combo_now 1
execute if score @s sb_use_held matches 1.. if predicate xianxia:input/sneak if items entity @s weapon.offhand minecraft:book[custom_data~{skill:"dragon_whisker_needle"}] run scoreboard players set @s dwn_combo_now 1
execute if score @s fs_use_held matches 1.. if predicate xianxia:input/sneak if items entity @s weapon.mainhand minecraft:written_book[custom_data~{skill:"dragon_whisker_needle"}] run scoreboard players set @s dwn_combo_now 1
execute if score @s fs_use_held matches 1.. if predicate xianxia:input/sneak if items entity @s weapon.offhand minecraft:book[custom_data~{skill:"dragon_whisker_needle"}] run scoreboard players set @s dwn_combo_now 1
execute if score @s dwn_combo_now matches 1 unless score @s dwn_combo_held matches 1.. run scoreboard players set @s dwn_combo_edge 1

# Existing charges continue while held; new charges only begin on the combo rising edge.
execute if score @s dwn_charge matches 1.. run function xianxia:skills/dragon_whisker_needle/charge_tick
execute unless score @s dwn_charge matches 1.. if score @s dwn_combo_edge matches 1 run function xianxia:skills/dragon_whisker_needle/try_start

scoreboard players operation @s dwn_combo_held = @s dwn_combo_now

# Reset one-tick state.
scoreboard players set @s dwn_combo_edge 0
scoreboard players set @s dwn_combo_now 0
tag @s remove dragon_whisker_needle_has_book
