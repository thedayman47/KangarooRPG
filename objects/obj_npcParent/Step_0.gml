///@description Edit "dialog" in Variable Definitions in reference to a global array made in scr_dialogueFunctions.

if(instance_exists(obj_dialogue)) exit;

if(instance_exists(obj_kangroo) && distance_to_object(obj_kangroo) < 8)
{
	canTalk = true;
	if(keyboard_check_pressed(inputKey))
	{
		createDialog(dialog);
	}
}
else
{
	canTalk = false;
}
