# Offhand skillbooks become regular books so right-click does not open the reading GUI.
item modify entity @s weapon.offhand xianxia:skills/skillbooks/to_offhand_book

# Everywhere else, restore the written book form so the book reads normally.
function xianxia:skills/skillbooks/restore_written_form
