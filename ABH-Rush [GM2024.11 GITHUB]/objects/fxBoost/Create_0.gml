/// @description Init FX Code

	if Player.boostAmount <= 0 || Stage.StageClear
	{
	    instance_destroy();
	    exit;
	}
	
	image_speed = 0.4;
	depth = Player.depth - 2;
	image_alpha = 0;
	
	airTime = 240;

	alive = true;
	image_angle = point_direction(Player.x_begin, Player.y_begin, x, y)
	
	if abs(Player.speedX) < 5
	    DisableCamera(10);
	else 
	    DisableCamera(8);
	
	Player.speedX = Player.speedLimitX*Player.animDir;
	
	gamepad_set_rumble(30);