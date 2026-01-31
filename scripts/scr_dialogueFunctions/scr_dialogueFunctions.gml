function create_dialog(_messages)
{
	if(instance_exists(obj_dialogue)) return; //ends function if the dialogue object already exist.
	
	var _inst = instance_create_depth(0, 0, 0, obj_dialogue);
	_inst.messages = _messages;
	_inst.currentMessage = 0;
	
}