/// @description Insert description here
// You can write your code in this editor

questBookOpen = false;
openQuestList = ds_list_create(); //change to activeQuestsList after complete
currentQuest = undefined; 
completedQuestList = ds_list_create();

//quest json 
questMaster = file_text_open_read("quests.json");
jsonArrayIndex = 0;
jsonString = ""; 

while(!file_text_eof(questMaster))
{
	jsonString += file_text_readln(questMaster);
	
	if(!file_text_eof(questMaster))
	{
		
		jsonString += "\n";
	}
}

file_text_close(questMaster);

questData = json_parse(jsonString);

for(var i = 0; i < array_length(questData); i++)
{
	show_debug_message("Quest[" + string(i) + "]: " + string(questData[i].questName));
}
