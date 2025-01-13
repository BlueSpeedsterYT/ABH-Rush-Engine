// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ColScriptMain(_Mask){
	//Define Values
	var _radius = _Mask;
	var pos_x = x;
	var pos_y = y;
	
	//Define Checks
	var _AllowPlatform = allowGrinding;
	var _AllowRailGrinding = allowGrinding;
	var _AllowWaterRunning = aboveWater && !isUnderwater;
	
	var _NormalCollision = collision_circle(pos_x, pos_y, _radius, parPlatforms, true, true);
	if (_NormalCollision) return true;
	
	//Return Result
	return ColScriptCircle(pos_x, pos_y, _radius, _AllowPlatform, _AllowRailGrinding, _AllowWaterRunning);
}