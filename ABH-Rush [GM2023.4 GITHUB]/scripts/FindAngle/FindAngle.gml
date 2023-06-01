// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FindAngle(_Angle, _HorizontalSpace, _Check){
angle = floor(_Angle)//round(argument0/8)*8;
hspace = _HorizontalSpace; 
check = _Check;

acos = dcos(angle);
asin = dsin(angle);

x1 = round(x-(acos*hspace));
y1 = round(y+(asin*hspace));

x2 = round(x+(acos*hspace));
y2 = round(y-(asin*hspace));

done1 = 0;
done2 = 0;

i = check;

while(i > 0)
{
	if !done1
	{
		if collision_point(x1,y1,parWalls,true,true)
			done1 = true;
		if characterLayer == 0 && collision_point(x1,y1,parBGWalls,true,true)
			done1 = true;
		if characterLayer == 1 && collision_point(x1,y1,parFGWalls,true,true)
			done1 = true;
		if allowGrinding && collision_point(x1,y1,parRails,true,true)
			done1 = true;
			
		x1 += asin;
		y1 += acos;
	}
	
	if !done2
	{
		if collision_point(x2,y2,parWalls,true,true)
			done2 = true;
		if characterLayer == 0 && collision_point(x2,y2,parBGWalls,true,true)
			done2 = true;
		if characterLayer == 1 && collision_point(x2,y2,parFGWalls,true,true)
			done2 = true;
		if allowGrinding && collision_point(x2,y2,parRails,true,true)
			done2 = true;
			
		x2 += asin;
		y2 += acos;
	}

	if done1 && done2
		break;
		
	i -= 1;
}

return round(point_direction(x1,y1,x2,y2));
}