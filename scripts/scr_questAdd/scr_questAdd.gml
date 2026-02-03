 //script to add a quest from a quest giver to the player and store it in the list of open quests
function scr_questAdd(){
	
	ds_list_add(obj_questManager.openQuestList, obj_questManager.questToGive)
	show_debug_message("quest named: " + obj_questManager.openQuestList[0] + " added to Open Quest List")
	//////////////////////////////////////////////////////
	//////////////////Deprecated for now//////////////////
	//////////////////////////////////////////////////////
}