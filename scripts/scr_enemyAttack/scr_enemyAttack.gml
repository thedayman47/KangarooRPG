// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemyAttack(){
	
	if(canAttack == true)
	{
		if(irandom_range(1, 21) % 2 == 0)
		{
			show_debug_message("Enemy used primary attack")		
		} else
		{
			show_debug_message("Enemy used alternate attack");
		}
		
		alarm[0] = attackCooldown;
		canAttack = false;
	}	
}