// Script that handles the interaction from player to any object that is interactable
function scr_actionInteract(){
	var interactObjectList = ds_list_create();
	var numberOfInteractsNearby = collision_circle_list(x, y, 64, other, false, true, interactObjectList, true);
}//asset_has_any_tag(instance_nearest(obj_kangroo.x, obj_kangroo.y) ,canInteract)