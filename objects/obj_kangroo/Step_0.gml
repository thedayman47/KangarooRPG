if(keyboard_check(ord("W")))
{
	y -= move_speed;
}
else if(keyboard_check(ord("A")))
{
	x -= move_speed;
	image_xscale = -1; 
}
else if(keyboard_check(ord("S")))
{
	y += move_speed;
}
else if(keyboard_check(ord("D")))
{
	x += move_speed;
	image_xscale = 1; 
}