// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ColScriptRight(_Mask){
	mask = _Mask;

	if collision_circle(x+(acos*mask)-asin*2,y-(asin*mask)-acos*2,3,parWalls,true,true) 
		return true;
		
	if characterLayer = 0 && collision_circle(x+(acos*mask)-asin*2,y-(asin*mask)-acos*2,3,parBGWalls,true,true) 
		return true;
	
	if characterLayer = 1 && collision_circle(x+(acos*mask)-asin*2,y-(asin*mask)-acos*2,3,parFGWalls,true,true) 
		return true;
	
	if collision_circle(x+(acos*mask)-asin*2,y-(asin*mask)-acos*2,3,parRails,true,true) && allowGrinding && angle == 0 
		return true;

	return false;
}