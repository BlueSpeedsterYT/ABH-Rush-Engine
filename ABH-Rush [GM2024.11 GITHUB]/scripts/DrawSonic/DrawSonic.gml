// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawSonic(){
	// Init Character Animations
	// Idle
	if(actionCurrent == PlayerActionNormal && (speedX == 0 && ground))
	{
		sprite_index = sprSonicIdle;
		animFrame += 0.20;
		actionLast = PlayerActionNormal;
	}

	// Duck
	if(actionCurrent == PlayerActionLookDown)
	{
	    sprite_index = sprSonicDuck;

	    if(keyDown && image_index == 3) {
	        animFrame = 0; 
		} else {
			animFrame += 0.5;
		}
	}
	// Look Up
	if(actionCurrent == PlayerActionLookUp)
	{
	    sprite_index = sprSonicLookUp;
    
	    if(keyUp && image_index == 2) {
	        animFrame = 0;
		} else {
			animFrame += 0.25;       
		}
	}

	//Walk, Jog, Run, Sprint, and Fall!
	if(actionCurrent == PlayerActionNormal && (speedX != 0 && ground))
	{
	    if(actionLast == PlayerActionNormal)
		{
	        image_index = 0;
	    }
	    actionLast = PlayerActionJump;
    
	    if(abs(speedX) < 3)
	    {
	        sprite_index = sprSonicWalk;
	        animFrame += AnimSetSpeedBasedOnPlayer(6, 1);
	    }
	    else if(abs(speedX) >= 3 && abs(speedX) < 6)
	    {
	        sprite_index = sprSonicJog;
	        animFrame += AnimSetSpeedBasedOnPlayer(8, 1);
	    }
	    else if(abs(speedX) >= 6 && abs(speedX) < 8)
	    {
	        sprite_index = sprSonicRunSlow;
	        animFrame += AnimSetSpeedBasedOnPlayer(10, 1);
	    }
	    else if(abs(speedX) >= 8 && abs(speedX) < 11)
	    {
	        sprite_index = sprSonicRunFast;
	        animFrame += AnimSetSpeedBasedOnPlayer(12, 1);
	    }
	    else if(abs(speedX) >= 11)
	    {
	        sprite_index = sprSonicSprint;
	        animFrame += AnimSetSpeedBasedOnPlayer(13.5, 1.1);
	    }
		
	    if(image_index > image_number-1)
		{
	        image_index = 0;
		}
	}
	else if(actionCurrent == PlayerActionNormal && !ground)
	{
	    if(speedY < -1)
	    {
	        sprite_index = sprSonicJump;
	        animFrame += 0.25;
	    }
	    else if(speedY < 0 && speedY >= -1)
	    {
	        if(sprite_index != sprSonicJumpMid)
			{
	            image_index = 0;
			}
	        sprite_index = sprSonicJumpMid;
	        animFrame += 0.25;
	    }
	    else if(speedY < 1 && speedY >= 0)
	    {
	        if(sprite_index != sprSonicJumpEnd)
			{
	            image_index = 0;
			}
	        sprite_index = sprSonicJumpEnd;
	        animFrame += 0.25;
	    }
	    else
	    {
	        if(sprite_index != sprSonicFall)
			{
	            image_index = 0;
			}
	        sprite_index = sprSonicFall;
	        animFrame += 0.25;
	    }
	}

	//Skidding
	if(actionCurrent == PlayerActionSkid)
	{
	    if(sprite_index != sprSonicBreakLow && sprite_index != sprSonicBreakHigh)
	    {
	        if(abs(speedX) > 7)
			{
	            sprite_index = sprSonicBreakHigh;
			}
	        else if(abs(speedX) <= 7)
			{
	            sprite_index = sprSonicBreakLow;
			}
	    }
    
	    if(sprite_index == sprSonicBreakLow)
	    {
	        if(image_index > 2)
			{
	            image_index = 1;
			}
	    }
	    else if(sprite_index == sprSonicBreakHigh)
	    {
	        if(image_index > 5)
			{
	            image_index = 3;
			}
	    }
	    animFrame += 0.35;
	}

	// Landing
	if(actionCurrent == PlayerActionJump && speedY > 0 && (collision_line(x,y,x,y+80,parWalls,true,true) || speedY > 9))
	{
	    if(sprite_index != sprSonicLand)
		{
	        image_index = 0;
		}
		sprite_index = sprSonicLand;
	    if(image_index > 3)
		{
	        image_index = 1;
		}
		animFrame += 0.25;
	}
	// Roll (This uses the Advance sprite instead of the one used in ABH-Rush GMS1, it can be swapped back if you know how.)
	else if(actionCurrent == PlayerActionJump || actionCurrent == PlayerActionRoll || actionCurrent == PlayerActionAutoroll){
		animFrame += AnimSetSpeedBasedOnPlayer(2, 1);
		sprite_index = sprSonicSpinAdvance;
	}

	// Anim Speed for Landing
	if(sprite_index == sprSonicLand){
		animFrame += 0.25;
	}

	// Spin Dash Charging
	if(actionCurrent == PlayerActionSpinCharge)
	{
		dustIndex += 0.5; // Dust Sprite Speed
		sprite_index = sprSonicSpinCharge;
		animFrame += 0.5;
		if(image_index == 3 || image_index == 7)
		{
	        image_index = 0;
		}
	    if(keyJump)
		{
	        image_index = 4;
		}
	}

	// Homing Attack
	if(actionCurrent == PlayerActionHomingTarget || actionCurrent == PlayerActionHomingNoTarget)
	{
		animFrame += 1;
		sprite_index = sprSonicSpinAdvance;
	}

	// Spring
	if(actionCurrent == PlayerActionSpring)
	{
	    if(sprite_index == sprSonicJump)
	    {
	        animFrame += 0.25;
	        if(speedY >= -4)
			{
	            actionCurrent = PlayerActionNormal;
			}
	    }
		
	    if(sprite_index == sprSonicWallJump)
	    {
	        animFrame += 0.25;
	        if(speedY >= 0)
			{
	            actionCurrent = PlayerActionNormal;
			}
	    }
		
	    if(sprite_index == sprSonicCorkscrew)
	    {
	        if(image_index <= 10)
			{
	            animFrame += 0.25;
			}
	        else
			{
	            actionCurrent = PlayerActionNormal;
			}
	    }   
	}

	// Dash Ring
	if(actionCurrent == PlayerActionDashRing)
	{
	    sprite_index = sprSonicWallJump;
	    animFrame += 0.25;
	}

	// Dash Ramp
	if(actionCurrent == PlayerActionDashRamp){
		if speedY < 2
	    {
	        sprite_index = sprSonicWallJump
	        animFrame += 0.25
	    }
	    else if speedY < 4 && speedY >= 2
	    {
	        if sprite_index != sprSonicJumpEnd
	            image_index = 0
	        sprite_index = sprSonicJumpEnd;
	        animFrame += 0.25
	    }
	    else
	    {
	        sprite_index = sprSonicFall
	        animFrame += 0.25
	    } 	
	}
	
	// Dash Pad
	if(actionCurrent == PlayerActionDashPad)
	{
		animFrame += AnimSetSpeedBasedOnPlayer(2, 1);
		sprite_index = sprSonicSpinCharge;
	}

	// Sliding
	if(actionCurrent == PlayerActionSlide)
	{   
	    if(sprite_index == sprSonicFall || sprite_index == sprSonicSpinAdvance || sprite_index == sprSonicWalk || sprite_index == sprSonicJog || sprite_index == sprSonicRunSlow || sprite_index == sprSonicRunFast || sprite_index == sprSonicSprint)
		{
			image_index = 0;
		    sprite_index = sprSonicSlideStart;
		}
		
		if(sprite_index == sprSonicSlideStart)
		{
			animFrame += 0.5;
			if(image_index > 3)
			{
				sprite_index = sprSonicSlide;
			}
		}
		
		if(sprite_index == sprSonicSlide)
		{
			animFrame += AnimSetSpeedBasedOnPlayer(7, 1);
		}
	}

	// Player Trick
	if(actionCurrent == PlayerActionTrick)
	{
	    if(image_index > 9)
	    {
	        actionCurrent = PlayerActionNormal;
	        homingDash = true;
	    }
	    animFrame += 0.25;
	}

	// Grinding
	if(actionCurrent == PlayerActionGrind && ColScriptRails(16) && ground) 
	{
	    if(abs(speedX) < 8.5) {
	        sprite_index = sprSonicGrind;
		} else {
	        sprite_index = sprSonicGrindFast;
		}
	    animFrame += 0.5;
	}

	// Swinging!
	if(actionCurrent == PlayerActionSwing)
	{
		sprite_index = sprSonicSwing;
	    animFrame += 0.35;
	}
	
	if(actionCurrent == PlayerActionSwingJump)
	{
		sprite_index = sprSonicSpinAdvance;
		animFrame += 1;
	}

	// QTE (Init):
	if(actionCurrent == PlayerActionQTEInit)
	{
	    sprite_index = sprSonicJump;
	    animFrame += 0.25;
	}


	// QTE (Successful):
	if(actionCurrent == PlayerActionQTESuccess)
	{
	    sprite_index = sprSonicQTETrick2;
	    animFrame += 0.35;
	    if(image_index >= 22) {
	        actionCurrent = PlayerActionNormal;
		}
	}

	// QTE (Failure):
	if(actionCurrent == PlayerActionQTEFailure)
	{
	    sprite_index = sprSonicQTEFail;
	    if(image_index <= 3) {
	        animFrame += 0.15;
		} else {
	        animFrame += 0.25;
		}
		
	    if(image_index > 7) {
	        image_index = 5;
		}
	}

	// Corkscrew
	if(actionCurrent == PlayerActionCorkscrew) {
		sprite_index = sprSonicCorkscrew;
	} else if(actionCurrent == PlayerActionRailCorkscrew) {
		sprite_index = (animDir == 1) ? sprSonicGrindCorkscrew : sprSonicGrindCorkscrewReverse;
	} else if(actionCurrent == PlayerActionRollCorkscrew) {
		sprite_index = sprSonicSpinAdvance;
		animFrame += AnimSetSpeedBasedOnPlayer(2, 1);
	}

	// Stomp
	AnimSetSimple(PlayerActionStomp, sprSonicStomp, 0.5);

	// Wall Jump (Hanging):
	if(actionCurrent == PlayerActionWallHang)
	{
		sprite_index = sprSonicWallHang;
	}
	
	// Wall Jump (Jumping):
	if(actionCurrent == PlayerActionWallJump)
	{
		sprite_index = sprSonicWallJump;
		animFrame += 0.25;
	}
	
	// Four Way Cannon:
	if(actionCurrent = PlayerActionCannon) {
	    sprite_index = sprSonicSpinAdvance;
	    animFrame += 0.25;
	}
	
	// Hurt:
	if(actionCurrent == PlayerActionDamage) {
	    sprite_index = sprSonicHurt;

	    if (!(!ground && (image_index == 4))) {
	        animFrame += 0.25;
		}
	}
	
	// Light Speed Dash:
	if(actionCurrent == PlayerActionLightDash)
	{
		sprite_index = sprSonicWallJump;
		animFrame += 0.5;
	}

	// Jump Panel (Jumping):
	if(actionCurrent == PlayerActionPanelJump)
	{
		sprite_index = sprSonicSpinAdvance;
		animFrame += 0.5;
	}
	
	// Jump Panel (Landed):
	if(actionCurrent == PlayerActionPanelLand)
	{
		sprite_index = sprSonicJumpPanel;
	}
	
	// Death:
	if(actionCurrent == PlayerActionDead)
	{
		sprite_index = sprSonicDie;

	    if (!(!ground && (image_index == 4))) {
	        animFrame += 0.25;
		}
		
		if(image_index >= 11)
		{
			image_index = 10;
		}
	}

	// Pulley/Zipline
	if(actionCurrent == PlayerActionPulley || actionCurrent == PlayerActionZipStart || actionCurrent == PlayerActionZipTravel || actionCurrent == PlayerActionPull){
		sprite_index = sprSonicGrab;
		animFrame += 0.125;
	}
	
	// Poles
	if(actionCurrent == PlayerActionPole)
	{
		sprite_index = sprSonicPoleSpinning;
		animFrame += 0.25;
	}
	
	// Bungee
	if(actionCurrent == PlayerActionBungee)
	{
		sprite_index = sprSonicBungee;
		animFrame += 0.25;
	}

}