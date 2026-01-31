if(inventory_open == true)
{
	draw_sprite_stretched
	(
		spr_backdrop,
		0,
		x-small_margin,
		y-small_margin,
		twice_margin+row_length * space_slots,
		twice_margin+(((INVENTORY_SLOTS-1) div row_length)+1) * space_slots
	);

	for(var i = 0; i < INVENTORY_SLOTS; i += 1)
	{
		var xx = x + (i mod row_length) * space_slots + 2;
		var yy = y + (i div row_length) * space_slots + 2;
		
		var hover = (obj_mouse.inventoryHover == id) && (obj_mouse.slotHover == i);
		draw_sprite(spr_slot, 0, xx, yy);
	
		if(inventory[i] != -1)
		{
			var alpha = 1.0;
			if (obj_mouse.inventoryDrag == id) && (obj_mouse.slotDrag == i) alpha = 0.5;
			draw_set_alpha(alpha);
			draw_sprite(spr_everyItem, inventory[i], xx, yy);
			draw_set_alpha(1.0);
		}
	}
}