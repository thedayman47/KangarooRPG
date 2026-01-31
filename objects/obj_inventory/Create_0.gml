#macro INVENTORY_SLOTS 15

row_length = 6;
inventory = array_create(INVENTORY_SLOTS, -1);
randomize();

//Inventory in the inventory:
/*
inventory[0] = 0;
inventory[1] = 0;
inventory[2] = 1; 
*/

//Inventory measurements:
space_slots = 72;
small_margin = 48;
twice_margin = small_margin * 4;

inventory_open = false;
