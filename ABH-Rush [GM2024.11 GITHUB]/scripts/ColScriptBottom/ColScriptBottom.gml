// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ColScriptBottom(_Mask){
	//Define Values
	var _pos_x = (x + (asin * _Mask));
	var _pos_y = (y + (acos * _Mask));
	var _radius = 8;

	//Define Checks
	var _AllowPlatform = allowGrinding;
	var _AllowRailGrinding = allowGrinding;
	var _AllowWaterRunning = aboveWater && !isUnderwater;

	return ColScriptCircle(_pos_x, _pos_y, _radius, _AllowPlatform, _AllowRailGrinding, _AllowWaterRunning);
}