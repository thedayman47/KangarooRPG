function createDialog(_messages)
{
	if(instance_exists(obj_dialogue)) return; //ends function if the dialogue object already exist.
	
	var _inst = instance_create_depth(0, 0, 0, obj_dialogue);
	_inst.messages = _messages;
	_inst.currentMessage = 0;
	
}
charColor = { //Custom colors for certain strings
	"Kangaroo": c_purple,
	"Snake": c_green
};

welcomeDialog = [
{
	name: "Snake",
	msg: "So you have chosen death!"
},
{
	name: "Kangaroo",
	msg: "Yeah sure why not."
},
{
	name: "Snake",
	msg: "Oh..."
}
];
