/// @description Open Quest Book
if(keyboard_check_pressed(ord("T")))
{
	questBookOpen = !questBookOpen;
	if(questBookOpen == true)
	{
		show_debug_message("Quest Book Displayed")
	}else
		if(questBookOpen == false)
	{
		show_debug_message("Quest Book NOT Displayed")
	}
	
}
