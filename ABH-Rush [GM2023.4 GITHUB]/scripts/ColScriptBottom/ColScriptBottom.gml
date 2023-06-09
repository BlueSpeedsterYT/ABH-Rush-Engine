// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ColScriptBottom(_Mask){
	mask = _Mask;
	radius = 8;

	if collision_circle(x+asin*mask,y+acos*mask,radius,parWalls,true,true) 
		return true;
		
	if characterLayer = 0 && collision_circle(x+asin*mask,y+acos*mask,radius,parBGWalls,true,true) 
		return true;
	
	if characterLayer = 1 && collision_circle(x+asin*mask,y+acos*mask,radius,parFGWalls,true,true) 
		return true;
	
	if allowGrinding && collision_circle(x+asin*mask,y+acos*mask,radius,parRails,true,true)
		return true;
		
	if collision_circle(x+asin*mask,y+acos*mask,radius,parPlatforms,true,true) 
		return true;

	return false;
}