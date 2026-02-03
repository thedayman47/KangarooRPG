// Script that handles the interaction from player to any object that is interactable
function scr_actionInteract(){
	var interactObjectList = ds_list_create();//create a ds list
	var numberOfInteractsNearby = collision_circle_list(x, y, 64, obj_npcParent, false, true, interactObjectList, true);//fill it with nearby npc object ids
	
	
	if(numberOfInteractsNearby > 0)
	{
		var theNearestObject = interactObjectList[| 0];
		show_debug_message("you interacted with " + object_get_name(theNearestObject.object_index));
			
		targetQuestIndex = theNearestObject.questToGive
		if(ds_list_find_index(obj_questManager.openQuestList, targetQuestIndex) == -1)
		{
			ds_list_add(obj_questManager.openQuestList, targetQuestIndex)
			show_debug_message("quest named: " + string(obj_questManager.openQuestList[| 0]) + " added to Open Quest List")		
			
		}else
		{
			show_debug_message("Quest already tracked on open quests list");
		}//end else if
	}//end if
	
	if(numberOfInteractsNearby < 1)
	{
		show_debug_message("WHY ARE YOU TALKING TO YOURSELF?");
	}
}