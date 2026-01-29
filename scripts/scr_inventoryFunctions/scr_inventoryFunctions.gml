function InventorySearch(root_object, item_type)
{
	for(var i = 0; i < INVENTORY_SLOTS; i += 1)
	{
		if(root_object.inventory[i] == item_type)
		{
			return(i);
		}
	}
	return(-1);
}
function InventoryRemove(root_object, item_type)
{
	var _slot = InventorySearch(root_object, item_type);
	if(_slot != -1)
	{
		with(root_object) inventory[_slot] = -1;
		return true;
	}
	else return false;
}
function InventoryAdd(root_object, item_type)
{
	var _slot = InventorySearch(root_object, -1);
		if(_slot != -1)
		{
			with(root_object) inventory[_slot] = item_type;
			return true;
		}
		else return false;
}
