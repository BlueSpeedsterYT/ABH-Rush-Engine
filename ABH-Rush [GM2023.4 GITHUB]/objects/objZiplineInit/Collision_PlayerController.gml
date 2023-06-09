/// @description Set up the Pre-Zipline System

	if isActive && Player.actionCurrent != PlayerActionDead && Player.ground = false && (Player.actionCurrent == PlayerActionDashRamp || Player.actionCurrent == PlayerActionNormal || Player.actionCurrent == PlayerActionJump)
	{
	    isActive = false;
	    Player.actionCurrent = PlayerActionZipStart;
	    Player.speedZip = Player.speedX;
    
	    Player.y = y + 6

	    if instance_exists(fxBoost)
	    { 
	        with(fxBoost)
	        {
	            alive = false
	        }
	    }
	}
