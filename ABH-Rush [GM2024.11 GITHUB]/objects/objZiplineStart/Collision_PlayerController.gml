/// @description Start up the Zipline Travel

	if Player.actionCurrent == PlayerActionZipStart && isActive && x <= Player.x
	{
    
	    Player.x = x 
	    isActive = false;
	    Player.actionCurrent = PlayerActionZipTravel;
	    Player.speedZip = Player.speedX;
	    Player.speedX = 0;
	    Player.speedY = 0;
	}
