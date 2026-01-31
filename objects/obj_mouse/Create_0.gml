//Inventory measurements:
space_slots = 36;
small_margin = 24;
twice_margin = small_margin * 2;

/// @description State Machine
inventoryHover = -1;
slotHover = -1;
inventoryDrag = -1;
slotDrag = -1;
itemDrag = -1;

mouseOver = function()
{
	//empty contents
	inventoryHover = -1;
	slotHover = -1;
	
	//mouse coordinates
	var mx = mouse_x;
	var my = mouse_y;
	
	with(obj_inventory)
	{
		if(point_in_rectangle(
		mx, 
		my, 
		x - 6, 
		y - 6, 
		x - 6 + small_margin+row_length*space_slots, 
		y - 6 + small_margin+row_length*space_slots))
		{
			//Checks if the mouse is over each slot
			for(var i = 0; i < INVENTORY_SLOTS; i += 1)
			{
				var xx = x + (i mod row_length) * space_slots + 2;
				var yy = y + (i div row_length) * space_slots + 2;
				if(point_in_rectangle(mx, my, xx, yy, xx + 32, yy + 32))
				{
					other.slotHover = i;
					other.inventoryHover = id;
				}
			}
		}
	}
}

stateFree = function()
{
	mouseOver();
	
	//Start to drag an item if slot isn't empty
	if(mouse_check_button(mb_left) && (slotHover != -1) && (inventoryHover.inventory[slotHover] != -1))
	{
		//Enter the drag state
		state = stateDrag;
		itemDrag = inventoryHover.inventory[slotHover];
		inventoryDrag = inventoryHover;
		slotDrag = slotHover;
	}
}
stateDrag = function()
{
	mouseOver();
	
	//Swap with slot if hovering
	if (slotHover != 1) InventorySwap(inventoryDrag, slotDrag, inventoryHover, slotHover);
	
	//Return to free state
	state = stateFree;
	itemDrag = -1;
	inventoryDrag = -1;
	slotDrag = -1;
}

state = stateFree;
