#macro INVENTORY_SLOTS 15

row_length = 6;
inventory = array_create(INVENTORY_SLOTS, -1);
randomize();
inventory[0] = 0;
inventory[1] = 0;
inventory[2] = 1;


space_slots = 36;
small_margin = 24;
twice_margin = small_margin * 2;
