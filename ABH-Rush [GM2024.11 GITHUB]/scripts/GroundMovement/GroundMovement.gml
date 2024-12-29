// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GroundMovement(){

	// Current Highest Speed Available
	speedCurrentX = 0;


if instance_exists(fxBoost) && boostAmount > 0
{
    if ground
        accel = 1;
    else 
        accel = 0.0625;
    speedCurrentX = speedLimitX;
}
else if (form != PlayerFormNormal)
{
    accel = 0.125;
    speedCurrentX = speedLimitX - 2;
}
else
{
    accel = 0.0625;
    
    speedCurrentX = speedMidX;
    
    if actionCurrent != PlayerActionRoll
    {
        if speedX > speedMidX
            speedX = speedMidX;
        else if speedX < -speedMidX
            speedX = -speedMidX;
    }
    else
    {
        if speedX > speedLimitX
            speedX = speedLimitX;
        else if speedX < -speedLimitX
            speedX = -speedLimitX;
    }
}

if instance_exists(fxBoost)
{   
    if speedX > 0
        animDir = 1;
    else if speedX < 0
        animDir = -1;
}

//skidding
if actionCurrent == PlayerActionNormal && ground
{
    if (animDir == 1 && keyLeft && speedX >= 3 ) || (animDir == -1 && keyRight && speedX <= -3)// abs(speedX) > 3
    {
        //if collision_line(x,y,x+20*asin,y+20*acos,obj_glass_wall,true,true) 
        //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_glass,true,true) && xlayer == 0) 
        //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_glass,true,true) && xlayer == 1)
        //    audio_play_sound(snd_skid_glass,1,0)
            
        //else if collision_line(x,y,x+20*asin,y+20*acos,obj_grass_wall,true,true)
        //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_grass,true,true) && xlayer == 0) 
        //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_grass,true,true) && xlayer == 1)
        //    audio_play_sound(snd_skid_grass,1,0)
            
        //else if collision_line(x,y,x+20*asin,y+20*acos,obj_stone_wall,true,true)
        //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_stone,true,true) && xlayer == 0) 
        //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_stone,true,true) && xlayer == 1)
        //    audio_play_sound(snd_skidhigh,1,0)
            
        //else if collision_line(x,y,x+20*asin,y+20*acos,obj_metal_wall,true,true)
        //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_metal,true,true) && xlayer == 0) 
        //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_metal,true,true) && xlayer == 1)
        //    audio_play_sound(snd_skid_metal,1,0)
            
        //else if collision_line(x,y,x+20*asin,y+20*acos,obj_wood_wall,true,true)
        //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_wood,true,true) && xlayer == 0) 
        //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_wood,true,true) && xlayer == 1)
        //    audio_play_sound(snd_skid_wood,1,0)
            
        //else if collision_line(x,y,x+20*asin,y+20*acos,obj_dirt_wall,true,true)
        //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_dirt,true,true) && xlayer == 0) 
        //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_dirt,true,true) && xlayer == 1)
        //    audio_play_sound(snd_skid_dirt,1,0)
        //else
        //    audio_play_sound(snd_skidhigh,1,0)
        actionCurrent = PlayerActionSkid;
        animIndex = 0;
         
    }
}
if actionCurrent == PlayerActionSkid 
{
    if speedX > 1
        speedX -= decel/4;
    if speedX < -1
        speedX += decel/4;
    
    if speedX > 1 && keyLeft
        speedX -= decel/3;
    if speedX < -1 && keyRight
        speedX += decel/3;
    
    if (animDir == 1 && keyRight && !keyLeft) || (animDir == -1 && keyLeft && !keyRight)
        actionCurrent = PlayerActionNormal;
        
    if abs(speedX) <= 1 || !ground
    {
        actionCurrent = PlayerActionNormal;
        animDir = -animDir;
    }
}

//direction

if actionCurrent = PlayerActionNormal //&&  !instance_exists(obj_boostfx)
{
    if keyLeft animDir = -1;
    if keyRight animDir =  1;
}

	// Player Movement
	if (actionCurrent == PlayerActionNormal || actionCurrent == PlayerActionJump || actionCurrent == PlayerActionCorkscrew)
	{
	    if ground{
	        if keyRight
	        {
	            if speedX >=0 
	            {
	                if speedX< speedCurrentX 
	                    speedX+=accel;
	            } 
	            else speedX+=decel;
	        }
	        if keyLeft
	        {
	            if speedX<=0 
	            {
	                if speedX > -speedCurrentX 
	                    speedX-=accel;
	            }         
	            else 
	                speedX-=decel;
	        }
	        if !keyRight && !keyLeft
	        {
	            if speedX > 0 
	                speedX -= fric; 
	            if speedX < 0 
	                speedX += fric;
	            if speedX <= fric && speedX >= -fric 
	                speedX = 0;
	        }
	    }
	    else
	    {
	        if keyRight {
				if speedX >=0 {
					if speedX < speedCurrentX 
						speedX+=accel*2;
				}
			}
			
	        if keyLeft {
				if speedX<=0 {
					if speedX > -speedCurrentX
						speedX-=accel*2;
				}
			}
	        if !keyRight && !keyLeft {
				if speedX > 0 
					speedX -= fric; 
				if speedX < 0 
					speedX += fric;
				if speedX <= fric && speedX >= -fric 
					speedX = 0;
			}
	    }
	}
	//ground spin
	if actionCurrent == PlayerActionRoll
	{
	    if ground{
	        if speedX > fricRoll {speedX-=fricRoll;if keyLeft speedX-=decelRoll}
	        if speedX <-fricRoll {speedX+=fricRoll;if keyRight speedX+=decelRoll}
	        if speedX < fricRoll && speedX > -fricRoll speedX = 0;
	    }
	    else
	    {
	        if keyRight
	        {if speedX >=0 {if speedX< speedMidX speedX+=accel*2}}
	        if keyLeft
	        {if speedX<=0 {if speedX > -speedMidX speedX-=accel*2}}
	    }
	}


}