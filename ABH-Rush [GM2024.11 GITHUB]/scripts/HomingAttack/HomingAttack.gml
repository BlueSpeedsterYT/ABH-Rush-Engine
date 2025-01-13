function HomingAttack(){

	//homing attack
	if (actionCurrent == PlayerActionJump || (actionCurrent == PlayerActionNormal && !ground) || actionCurrent == PlayerActionSwingJump) // || (actionCurrent == PlayerActionSpring && speedX == 0))
	{
	    canHome = true   
	}
	else 
	{
	    canHome = false
	}

	if canHome && distance_to_object(instance_nearest(x,y,parHomableThing)) <= 200 && instance_nearest(x,y,parHomableThing).y > (y - 10) && !collision_line(x,y,instance_nearest(x,y,parHomableThing).x,instance_nearest(x,y,parHomableThing).y,parWalls,true,true) && instance_nearest(x,y,parHomableThing).canHit && (( x < instance_nearest(x,y,parHomableThing).x && animDir == 1) || ( x > instance_nearest(x,y,parHomableThing).x && animDir == -1))
	{
	    if !instance_exists(uiHomingLock)
	        instance_create_depth(instance_nearest(x,y,parHomableThing).x,instance_nearest(x,y,parHomableThing).y,StageManager.depth-10, uiHomingLock)
	}
	else if distance_to_object(instance_nearest(x,y,parHomableThing)) > 200 || ground || instance_nearest(x,y,parHomableThing).y <= (y -10) || ( x < instance_nearest(x,y,parHomableThing).x && animDir == -1) || ( x > instance_nearest(x,y,parHomableThing).x && animDir == 1)
	{
	    if instance_exists(uiHomingLock)
		{
	        with(uiHomingLock)
	        {
	            instance_destroy();
	        }
		}
	}

	if (actionCurrent == PlayerActionJump && homingEnable && keyJumpReleased) || (actionCurrent == PlayerActionNormal && !ground) || actionCurrent == PlayerActionSpring
	    homingEnable = false
    

	if instance_exists(uiHomingLock)
	{
	    if keyJump && !homingEnable
	    {
	        //if actionCurrent != PlayerActionHomingTarget
	            //audio_play_sound(snd_homing,1,false);
	        actionCurrent = PlayerActionHomingTarget
	        speedX = 0
	        speedY = 0
	        move_towards_point(uiHomingLock.x,uiHomingLock.y,20);
	    }
	}
	else
	{
	    if keyJump && !ground && (actionCurrent == PlayerActionJump || actionCurrent == PlayerActionNormal) && !homingEnable && homingDash
	    {
	        if actionCurrent != PlayerActionHomingNoTarget
	        {
	            //if character == PlayerSonic
	                //audio_play_sound(snd_homing,1,false);
	            //else if character == PlayerShadow
	                //audio_play_sound(snd_Shadow_Warp,1,false);
	        }
	        actionCurrent = PlayerActionHomingNoTarget
	        speedX = animDir*9
	        speedY = 0
	        newAlarm[2] = 15
	        homingEnable = true
	        homingDash = false
	        image_index = 0
	    }
	    else if actionCurrent = PlayerActionHomingNoTarget && ground
	    {
	        actionCurrent=PlayerActionNormal
	        newAlarm[2] = 0
	        homingEnable = false
	        homingDash = false
	        grav = 0.21875;
	    }
	}
	if !homingEnable && ground
	    homingEnable = true

	if !homingDash && ground
	    homingDash = true
    
    
	if actionCurrent == PlayerActionHomingNoTarget
	{
	    speedX = animDir*12
	    speedY = 0
	}

	if actionCurrent == PlayerActionHomingTarget && instance_exists(uiHomingLock)
	{
	    move_towards_point(uiHomingLock.x,uiHomingLock.y,20);
	}
	else
	{ 
	    vspeed = 0;
	    hspeed = 0;
	}

	if actionCurrent == PlayerActionHomingTarget && (place_meeting(x,y,parWalls) || ground) 
	    actionCurrent = PlayerActionNormal

	//after homing attack trick is action PlayerActionTrick which is not controlled here, however homingDash is controlled in draw event 


}