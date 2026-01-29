// @func scr_armsAttach(owner, layername)
// @arg owner
// @arg layername
function scr_armsAttach(){
var _owner = argument0;
var _layer = argument1;

if(!instance_exists(_owner))
{
	exit;
}

var _arms = instance_create_layer(_owner.x, _owner.y, _layer, obj_rooHands)
_arms.owner = _owner;

_arms.follow_fn = function()
{
	//if (!instance_exists(owner))
	//{
	//	instance_destroy()
	//	return;
	//}
	
	x = owner.x;
	y = owner.y;
	
	_arms.x = _arms.obj_kangroo.x;
	_arms.y = _arms.obj_kangroo.y;
}

return _arms

}