// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_combatControls(){
	
	primaryAttack = mouse_check_button_pressed(mb_left);
	alternateAttack = mouse_check_button_pressed(mb_right);
	specialAttack = keyboard_check_pressed(ord("Q"));
	superAttack = keyboard_check_pressed(ord("E"));
	
	attackDirection = point_direction(owner.x, owner.y, mouse_x, mouse_y);
	
	hitBoxX = lengthdir_x(owner.attackRange, attackDirection) + owner.x;
	hitBoxY = lengthdir_y(owner.attackRange, attackDirection) + owner.y;
		
	if(primaryAttack)
	{
		hitBox = instance_create_depth(hitBoxX, hitBoxY, depth, obj_hitBox)
		hitBox.creator = id;
	}

}