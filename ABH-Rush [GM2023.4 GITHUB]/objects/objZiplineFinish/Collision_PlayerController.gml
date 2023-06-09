/// @description End the Zipline Actions

	if(Player.actionCurrent == PlayerActionZipTravel && x <= Player.x){
		Player.actionCurrent = PlayerActionNormal;
		Player.speedX = Player.speedZip;
		Player.speedY = 0;
		Player.speedZip = 0;
		Player.hspeed = 0;
		Player.vspeed = 0;
	}