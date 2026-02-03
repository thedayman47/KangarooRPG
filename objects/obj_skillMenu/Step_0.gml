//getting inputs
open_key = keyboard_check_pressed(ord("Y"));
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
confirm_key = keyboard_check_pressed(vk_enter);

//move through the menu
pos += down_key - up_key;

if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

//use option
if confirm_key {
	
switch(pos){
	
case 0:
	instance_destroy()
	break;
	
case 1:
	obj_kangroo.move_speed++;
	break;
	
case 2:
	obj_kangroo.offense+=2;
	break;

case 3:
	obj_kangroo.critPower+=0.2
	break;
}

}