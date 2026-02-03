if(instance_exists(obj_dialogue)) exit; //Leaves event if exist. In enemy's step event as well!

var up = keyboard_check(ord("W"));
var left = keyboard_check(ord("A"));
var down = keyboard_check(ord("S"));
var right = keyboard_check(ord("D"));

var horizontal = (right - left);
var vertical = (down - up);
move_diagonally = move_speed * 0.707;

var hsp = 0;
var vsp = 0;

if(horizontal != 0 && vertical != 0)
{
	hsp = horizontal * move_diagonally;
	vsp = vertical * move_diagonally;
}
else
{
	hsp = horizontal * move_speed;
	vsp = vertical * move_speed;
}

x += hsp;
y += vsp;

if(left) image_xscale = -1;
else image_xscale = 1;

