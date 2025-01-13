// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ColScriptTop(_Mask){
	//Define Values
	var _pos_x = (x - (asin * _Mask));
	var _pos_y = (y - (acos * _Mask));
	var _radius = 3;

	return ColScriptCircle(_pos_x, _pos_y, _radius);
}