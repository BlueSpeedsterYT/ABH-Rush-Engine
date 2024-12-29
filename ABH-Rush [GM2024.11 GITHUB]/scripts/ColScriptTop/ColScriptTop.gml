// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ColScriptTop(_Mask){
	mask = _Mask;

	if collision_circle(x-asin*mask,y-acos*mask,3,parWalls,true,true) 
		return true;
		
	if characterLayer = 0 && collision_circle(x-asin*mask,y-acos*mask,3,parBGWalls,true,true) 
		return true;
	
	if characterLayer = 1 && collision_circle(x-asin*mask,y-acos*mask,3,parFGWalls,true,true) 
		return true;

	return false;
}