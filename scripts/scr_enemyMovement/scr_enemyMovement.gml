// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemyMovement(){
		 
	distanceToPlayer = distance_to_object(obj_kangroo);
	sweetZone = (distanceToPlayer <= attackRange && distanceToPlayer >= preferredRange);
	angleToPlayer = point_direction(x, y, obj_kangroo.x, obj_kangroo.y);
		playerMoveDirection = point_direction(xprevious, yprevious, obj_kangroo.x, obj_kangroo.y)
	playerLeftFlankX = lengthdir_x(sweetZone, playerMoveDirection - 90);
	playerLeftFlankY = lengthdir_y(sweetZone, playerMoveDirection - 90);
	playerRightFlankX = lengthdir_x(sweetZone, playerMoveDirection + 90);
	playerRightFlankY = lengthdir_y(sweetZone, playerMoveDirection + 90);

	//basic movement
	if(distanceToPlayer > attackRange)
	{
		move_towards_point(obj_kangroo.x, obj_kangroo.y, moveSpeed);
	}else
	if(distanceToPlayer == sweetZone)
	{
		if(rngValue % 2 == 0)
		{
			move_towards_point(playerLeftFlankX, playerLeftFlankY, (moveSpeed/3) );
		} else
		{
			move_towards_point(playerRightFlankX, playerRightFlankY, (moveSpeed/3) );
		}
		
		scr_enemyAttack();
	} else
	
	//bounds
	x = clamp(x, 0, room_width - 96);
	y = clamp(y, 0, room_height - 64);
	
	//visuals and sprite stuff
	image_angle = angleToPlayer;
}