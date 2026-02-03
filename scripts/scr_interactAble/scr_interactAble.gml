// script that goes into objects or npc's that are interactable
function scr_interactAble(){
	
	if (collision_circle(x, y, 64, obj_kangroo, false, true))
	{
		draw_sprite(spr_keyIconF, -1, x, y - 44);
		canInteract = true;
	} else
	{
		canInteract = false;
	}
}