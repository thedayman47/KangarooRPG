// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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