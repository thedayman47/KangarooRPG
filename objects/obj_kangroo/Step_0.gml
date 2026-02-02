var up = keyboard_check(ord("W"));
var left = keyboard_check(ord("A"));
var down = keyboard_check(ord("S"));
var right = keyboard_check(ord("D"));

var horizontal = (right - left);
var vertical = (down - up);

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

if(left) image_xscale = -scale;
else image_xscale = scale;

//Keeps the player in the room.
x = clamp(x, sprite_width/2, room_width - sprite_width/2);
y = clamp(y, sprite_height/2, room_height - sprite_height/2);
