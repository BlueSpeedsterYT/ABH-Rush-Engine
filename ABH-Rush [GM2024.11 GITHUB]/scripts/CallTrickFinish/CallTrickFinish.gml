// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CallTrickFinish(_TrickMessage = 0){
	var _Message = instance_create_depth(x, y, -100, QTEResult);
	_Message.QTEMessage = _TrickMessage;
}