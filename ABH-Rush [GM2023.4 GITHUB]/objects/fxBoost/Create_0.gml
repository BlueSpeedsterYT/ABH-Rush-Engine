/// @description Init FX Code

	if Player.boostAmount <= 0 || Stage.StageClear
	{
	    instance_destroy()
	    exit
	}
	
	airtime = 240;

	alive = true;
	
	Player.speedX = Player.speedLimitX*Player.animDir;