// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ColScriptRight(_Mask){
	//Define Values
	var _multiply = 2;
	var _radius = 3;
	var _pos_x = (x + (acos * _Mask) - (asin * _multiply));
	var _pos_y = (y - (asin * _Mask) - (acos * _multiply));

	return ColScriptCircle(_pos_x, _pos_y, _radius);
}