// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_combatControls(){
	
	primaryAttack = mouse_check_button_pressed(mb_left);
	alternateAttack = mouse_check_button_pressed(mb_right);
	specialAttack = keyboard_check_pressed(ord("Q"));
	superAttack = keyboard_check_pressed(ord("E"));

}