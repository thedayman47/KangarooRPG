/// @description Test controls, delete when player's controls are implemented

if(keyboard_check_pressed(ord("C"))) 
	show_debug_message(InventorySearch(id, 1) != -1);
	
if(keyboard_check_pressed(ord("P")))
	InventoryAdd(id, irandom(1));
if(keyboard_check_pressed(ord("V")))
	InventoryRemove(id, irandom(1));
	