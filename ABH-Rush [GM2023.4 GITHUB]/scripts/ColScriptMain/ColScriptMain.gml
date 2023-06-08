// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ColScriptMain(_Mask){
	mask = _Mask;

	if collision_circle(x,y,mask,parWalls,true,true) 
		return true;
		
	if characterLayer = 0 && collision_circle(x,y,mask,parBGWalls,true,true) 
		return true;
	
	if characterLayer = 1 && collision_circle(x,y,mask,parFGWalls,true,true) 
		return true;
	
	if allowGrinding && collision_circle(x,y,mask,parRails,true,true)
		return true;

	if platformCheck && collision_circle(x,y,mask,parPlatforms,true,true) 
		return true;

	return false;
}