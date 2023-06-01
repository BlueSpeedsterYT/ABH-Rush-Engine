// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ColScriptRightLine(_Mask){
	mask = _Mask;
	line = floor(mask*3.5);

	if collision_line(x+(acos*mask)+(asin*mask),y-(asin*mask)+(acos*mask),x+(acos*mask)+(asin*line),y-(asin*mask)+(acos*line),parWalls,true,true) 
		return true;
		
	if characterLayer = 0 && collision_line(x+(acos*mask)+(asin*mask),y-(asin*mask)+(acos*mask),x+(acos*mask)+(asin*line),y-(asin*mask)+(acos*line),parBGWalls,true,true) 
		return true;
	
	if characterLayer = 1 && collision_line(x+(acos*mask)+(asin*mask),y-(asin*mask)+(acos*mask),x+(acos*mask)+(asin*line),y-(asin*mask)+(acos*line),parFGWalls,true,true) 
		return true;
	
	if allowGrinding && collision_line(x+(acos*mask)+(asin*mask)+lengthdir_y(8, angle),y-(asin*mask)+(acos*mask)-lengthdir_y(8, angle-90),x+(acos*mask)+(asin*line),y-(asin*mask)+(acos*line),parRails,true,true)
		return true;

	return false;
}