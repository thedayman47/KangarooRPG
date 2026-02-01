/// @description Insert description here
// You can write your code in this editor
scr_enemyMovement()

if (hitPoints <= 0)
{
	instance_destroy()
}
if(instance_exists(obj_dialogue)) exit; //Leaves event if exist. In player's step event as well!
