// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gamepad_set_rumble(_rumbleTime){
	with (instance_create_depth(x, y, 0, XboxRumble)){
		rumbleTimer = _rumbleTime;
		enableRumble = true;
	}
}