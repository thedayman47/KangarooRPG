/// @description Test controls, delete when player's controls are implemented

if(keyboard_check_pressed(ord("C"))) 
	show_debug_message(InventorySearch(id, 1) != -1); //Searches for type 1 items (based on frames of spr_everyItem).
	
if(keyboard_check_pressed(ord("P")))
	InventoryAdd(id, irandom(1)); //Adds either a type 0 or type 1 item.
if(keyboard_check_pressed(ord("V")))
	InventoryRemove(id, irandom(1)); //Removes either a type 0 or type 1 item.
	