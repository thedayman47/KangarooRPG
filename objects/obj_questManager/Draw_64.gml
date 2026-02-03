/// @description Insert description here
// You can write your code in this editor
if(questBookOpen == true)
{
	draw_sprite(spr_questBook, 0, 684, 384); 

	myRowIterator = - 50;
	for(var i = 0; i < ds_list_size(openQuestList); i++)
	{
		var quest = openQuestList[| i];
		var state = quest.states[0];
		var location = $"x {quest.states[0].target.x}  y {quest.states[0].target.y}";
				
		draw_text(x + 320, y + myRowIterator, openQuestList[| i].questName)
		myRowIterator += 40;
		draw_text_ext(x + 320, y + myRowIterator, openQuestList[| i].description, 14, 270)
		myRowIterator += 40;
		draw_text_ext(x + 320, y + 100, quest.states[0].text, 14, 270)
		draw_text_ext(x + 320, y + 140, location, 14, 270)

	}
} 