/// @description Init FX Code

	if Player.boostAmount <= 0 || Stage.StageClear
	{
	    instance_destroy()
	    exit
	}
	
	airtime = 240;

	alive = true;
	
	Camera.CamFollow = false
	if abs(Player.speedX) < 5
	    Camera.CamFollowTimer = 20;
	else 
	    Camera.CamFollowTimer = 8;
	
	Player.speedX = Player.speedLimitX*Player.animDir;