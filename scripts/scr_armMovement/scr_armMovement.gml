// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_armMovement()
{
	
//is valid check
	if(!instance_exists(owner))
	{
		instance_destroy();
		exit;
	} else
	{	
	//get angle from player to mouse
	mouseDirection = point_direction(owner.x, owner.y, mouse_x, mouse_y);
		
	//adjust the sprite orientation
	image_angle = mouseDirection;
	
	//right
	if(mouseDirection >= 0 && mouseDirection < 46)	
	{
		image_index = 0;
	} else 
	//up
	if(mouseDirection >= 46 && mouseDirection < 136)
	{
		image_index = 5;
	} else 
	//left
	if(mouseDirection >= 136 && mouseDirection < 216)
	{
		image_index = 3;
	} else
	//down
	if(mouseDirection >= 216 && mouseDirection < 316)
	{
		image_index = 4;
	}

	
	//set the position of the offset a distance in the direction of the mouse
	x = owner.x + lengthdir_x(armOffset, mouseDirection);
	y = owner.y + lengthdir_y(armOffset, mouseDirection);
	
	//change offset for lengthdir if attacking
		if(primaryAttack)
		{
			armOffset = 48;
		} else { 
			armOffset = 24;
		}//end if else	
	}//end if else
}//end function