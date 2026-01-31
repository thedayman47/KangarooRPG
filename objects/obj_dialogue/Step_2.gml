if(currentMessage < 0) exit; //Leaves event if message hasn't started.

var _str = messages[currentMessage].msg;

if(currentChar < string_length(_str))
{
	currentChar += charSpeed * (1 + real(keyboard_check(inputKey))); //Drawing the amount of characters from string.
	drawMessage = string_copy(_str, 0, currentChar);
}
else if(keyboard_check_pressed(inputKey))
{
	currentMessage++;
	if(currentMessage >= array_length(messages))
	{
		instance_destroy();
	}
	else
	{
		currentChar = 0;
	}
}
