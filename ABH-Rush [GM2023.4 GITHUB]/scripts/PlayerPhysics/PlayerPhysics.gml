// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerPhysics(){

	// Speed Limits
	if(speedX > speedLimitX) speedX = speedLimitX;
	if(speedX < -speedLimitX) speedX = -speedLimitX;
	if(speedY > speedLimitY) speedY = speedLimitY;

	// X Speed
	if speedX > 0 // Right Side
	{
	    for(i = 0; i < speedX && !ColScriptRight(mask); i+=1)
	    {
	        x+=acos;
	        y-=asin;    
	    }
	}
	
	if speedX < 0 // Left Side
	{
	    for(i = 0; i > speedX && !ColScriptLeft(mask); i -= 1)
	    {
	        x-=acos;
	        y+=asin;
	    }
	}
	
	// Y Speed
	if speedY > 0 // Bottom
	{
	    for(i = 0; i < speedY &&!ColScriptBottom(mask); i += 1)
	    {
	        y+=1;
	    }
	}

	if speedY < 0 // Top
	{
	    for(i = 0; i > speedY && !ColScriptTop(mask); i -= 1;)
	    {
	        y-=1;
	    }
	}

	// Landing Check
	if speedY >= 0 && !ground && ColScriptBottom(mask) && (ColScriptLeftLine(mask) || ColScriptRightLine(mask))
	{
	    angle = FindAngle(angle,mask,mask);
	    acos = dcos(angle);
	    asin = dsin(angle);
    
	    speedX -= (asin*speedY*2);
	    speedY = 0;
	    ground = true;
	}


	// Ground Lock
	if ground
	{
	    while (ColScriptMain(mask))
	    {
	        x-=asin;
	        y-=acos;
	    }

	    while (!ColScriptMain(mask) && ColScriptGround(mask))
	    {
	        x+=asin; 
	        y+=acos;
	    }

	    var collide_offset = mask
	    var collide_check_condition = !collision_point(x+collide_offset*asin,y+collide_offset*acos,parWalls,true,true) || (!collision_point(x+collide_offset*asin,y+collide_offset*acos,parBGWalls,true,true) && characterLayer = 0) || (!collision_point(x+collide_offset*asin,y+collide_offset*acos,parFGWalls,true,true) && characterLayer = 1) || (!collision_point(x+collide_offset*asin,y+collide_offset*acos,parRails,true,true) && allowGrinding = true)
    
	    if (collide_check_condition)
	    {
	        x += asin
	        y += acos
	    }
	    else
	    {
	        x -= asin
	        y -= acos
	    }
    
	}

	// Exit Ground
	if (!ColScriptLeftLine(mask) || !ColScriptRightLine(mask)) && !ColScriptBottom(mask) && ground  && !collision_line(x,y,x+20*asin,y+20*acos,parWalls,true,true)// &&!collision_point(x+18*asin,y+18*acos,parWalls,true,true)
	{   
	    ground = false;
	    speedY = -asin*speedX;
	    speedX = acos*speedX; 
    
	    angle = 0;
	    asin = 0
	    acos = 1    
	}


	// Colide with Wall
	while(ColScriptRight(mask))
	{
	    x-=acos;
	    y+=asin;
	    speedX = 0
	}
	while(ColScriptLeft(mask))
	{
	    x+=acos;
	    y-=asin;
	    speedX = 0
	}

	// Gravity
	if !ground
	{
	    if character == PlayerTails && (actionCurrent == PlayerActionHomingAttack || actionCurrent == PlayerActionHomingDash)
	        speedY += 0.03125
	    else 
	        speedY += grav;
	}
	
	// Speed from Angles.
	if angle > 70 && angle < 290 && abs(speedX) < 1.5 && actionCurrent != PlayerActionGrind
	{
	    x -= asin*5
	    y -= acos*5
	    angle = 0;
	    speedY = -(asin*speedX);
	    speedX = (acos*speedX);
	    ground = false;
	}

	// Slope Factor
	if actionCurrent = PlayerActionNormal slp =0.125;
	if actionCurrent = PlayerActionRoll {if sign(speedX) = sign(asin) slp=0.078125; if sign(speedX) != sign(asin) slp =0.3125;}
	if (actionCurrent >= PlayerActionNormal && (speedX < speedLimitX && speedX > -speedLimitX )) 
	{    
	    speedX -= slp*asin;
	}
	if ground && (ColScriptLeftLine(mask) && ColScriptRightLine(mask))
	{
	    angle = FindAngle(angle,mask,25);
	}

	if !ground && ColScriptTop(mask) && speedY < 0
	{

	    var check_angle = FindAngle(180,mask,25)
	    if (check_angle >= 135 && check_angle <= 170)
	    {
	        actionCurrent = PlayerActionNormal
	        angle = check_angle
	        speedX = -speedY
	        speedY = 0
	    }
	    else if (check_angle >= 190 && check_angle <= 225)
	    {
	        actionCurrent = PlayerActionNormal
	        angle = check_angle
	        speedX = speedY
	        speedY = 0
	    }
	    else
	    {
	        speedY = 0
	        angle = 0
	    }
	}

	acos = dcos(angle);
	asin = dsin(angle);
}