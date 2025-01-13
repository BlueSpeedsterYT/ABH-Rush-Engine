// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerPhysics(){
	
	//Slope Factor Variable
	var _slope_factor = 0;

	// Speed Limits
	speedX = clamp(speedX, -speedLimitX, speedLimitX);
	if(speedY > speedLimitY) speedY = speedLimitY;

	// X Speed
	if(speedX > 0) // Right Side
	{
	    for(var i = 0; i < speedX && !ColScriptRight(mask); ++i)
	    {
	        x+=acos;
	        y-=asin;    
	    }
	}
	
	if(speedX < 0) // Left Side
	{
	    for(var i = 0; i > speedX && !ColScriptLeft(mask); --i)
	    {
	        x-=acos;
	        y+=asin;
	    }
	}
	
	// Y Speed
	if(speedY > 0) // Bottom
	{
	    for(var i = 0; i < speedY &&!ColScriptBottom(mask); ++i)
	    {
	        y++;
	    }
	}

	if(speedY < 0) // Top
	{
	    for(var i = 0; i > speedY && !ColScriptTop(mask); --i)
	    {
	        y--;
	    }
	}

	// Landing Check
	if(!ground && ColScriptBottom(mask) && (ColScriptLeftLine(mask) || ColScriptRightLine(mask)) && speedY >= 0)
	{
	    angle = FindAngle(angle,mask,mask);
	    acos = dcos(angle);
	    asin = dsin(angle);
    
	    speedX -= (asin * speedY * 2);
	    speedY = 0;
	    ground = true;
	}


	// Ground Lock
	if(ground)
	{
	    while (ColScriptMain(mask))
	    {
	        x -= asin;
	        y -= acos;
	    }

	    while (!ColScriptMain(mask) && ColScriptGround(mask))
	    {
	        x += asin; 
	        y += acos;
	    }

	    var pos_x = x + mask * asin;
        var pos_y = y + mask * acos;
        var _no_collision_normal = !collision_point(pos_x, pos_y, parWalls, true, true);
        var _no_collision_background = !collision_point(pos_x, pos_y, parBGWalls, true, true) && characterLayer == 0;
        var _no_collision_foreground = !collision_point(pos_x, pos_y, parFGWalls, true, true) && characterLayer == 1;
        var _no_collision_rails = !collision_point(pos_x, pos_y, parRails, true, true) && allowGrinding;
    
	    if(_no_collision_normal || _no_collision_background || _no_collision_foreground || _no_collision_rails)
	    {
	        x += asin;
	        y += acos;
	    }
	    else
	    {
	        x -= asin;
	        y -= acos;
	    }
    
	}

	//Exit Ground
	var _long_line = mask + 4;
	var _normal_collision = collision_line(x, y, x + _long_line * asin, y + _long_line * acos, parWalls, true, true);
	if(ground && !_normal_collision && !ColScriptBottom(mask) && (!ColScriptLeftLine(mask) || !ColScriptRightLine(mask)))
	{   
	    ground = false;
	    speedY = -asin*speedX;
	    speedX = acos*speedX; 
    
	    angle = 0;
	    asin = 0;
	    acos = 1;
	}


	// Colide with Wall
	while(ColScriptRight(mask))
	{
	    x -= acos;
	    y += asin;
	    speedX = 0;
	}
	while(ColScriptLeft(mask))
	{
	    x += acos;
	    y -= asin;
	    speedX = 0;
	}

	// Gravity
	if(!ground)
	{
	    if(character == PlayerTails && (actionCurrent == PlayerActionHomingTarget || actionCurrent == PlayerActionHomingNoTarget))
	        speedY += 0.03125
	    else 
	        speedY += grav;
	}
	
	// Speed from Angles.
	if(angle > 70 && angle < 290 && abs(speedX) < 1.5 && actionCurrent != PlayerActionGrind)
	{
	    x -= asin * 5;
	    y -= acos * 5;
	    angle = 0;
	    speedY = -(asin * speedX);
	    speedX = (acos * speedX);
	    ground = false;
	}

	// Slope Factor
	if(actionCurrent = PlayerActionNormal)
	{
		_slope_factor = 0.125;
	}
	if(actionCurrent = PlayerActionRoll)
	{
		var _horizontal_direction = sign(speedX);
        var _arc_sine_direction = sign(asin);

        if (_horizontal_direction == _arc_sine_direction) {
            _slope_factor = 0.078125
        } else {
            _slope_factor = 0.3125;
        }
	}
	
	if (actionCurrent >= PlayerActionNormal && (abs(speedX) < speedLimitX)) 
	{    
	    speedX -= _slope_factor * asin;
	}
	
	
	if(ground && (ColScriptLeftLine(mask) && ColScriptRightLine(mask)))
	{
	    angle = FindAngle(angle, mask, 25);
	}

	if(!ground && ColScriptTop(mask) && speedY < 0)
	{

	    var check_angle = FindAngle(180, mask, 25);
	    if (check_angle >= 135 && check_angle <= 170)
	    {
	        actionCurrent = PlayerActionNormal;
	        angle = check_angle;
	        speedX = -speedY;
	        speedY = 0;
	    }
	    else if (check_angle >= 190 && check_angle <= 225)
	    {
	        actionCurrent = PlayerActionNormal;
	        angle = check_angle;
	        speedX = speedY;
	        speedY = 0;
	    }
	    else
	    {
	        speedY = 0;
	        angle = 0;
	    }
	}

	acos = dcos(angle);
	asin = dsin(angle);
}