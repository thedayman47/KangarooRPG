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
