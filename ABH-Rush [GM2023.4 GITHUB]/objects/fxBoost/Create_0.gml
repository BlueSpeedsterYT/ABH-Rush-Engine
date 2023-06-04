/// @description Init FX Code

	if Player.boostAmount <= 0 || Stage.StageClear
	{
	    instance_destroy()
	    exit
	}
	
	airtime = 240;

	alive = true;
	
	if abs(Player.speedX) < 5
	    DisableCamera(20);
	else 
	    DisableCamera(8);
	
	Player.speedX = Player.speedLimitX*Player.animDir;
	
	gamepad_set_rumble(30);