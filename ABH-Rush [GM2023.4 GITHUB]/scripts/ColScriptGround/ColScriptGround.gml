// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ColScriptGround(_Mask){
	mask = _Mask;
	multiply = 2.5;
	radius = 9;

	if collision_circle(x-asin*(mask*multiply),y+acos*(mask*multiply),radius,parWalls,true,true) 
		return true;
		
	if characterLayer = 0 && collision_circle(x-asin*(mask*multiply),y+acos*(mask*multiply),radius,parBGWalls,true,true) 
		return true;
	
	if characterLayer = 1 && collision_circle(x-asin*(mask*multiply),y+acos*(mask*multiply),radius,parFGWalls,true,true) 
		return true;
	
	if allowGrinding && collision_circle(x-asin*(mask*multiply),y+acos*(mask*multiply),radius,parRails,true,true)
		return true;

	if !isUnderwater && aboveWater && collision_circle(x-asin*(mask*multiply),y+acos*(mask*multiply),radius,parWaterSurface,true,true) 
		return true;

	if collision_circle(x-asin*(mask*multiply),y+acos*(mask*multiply),radius,parPlatforms,true,true) 
		return true;

	return false;
}