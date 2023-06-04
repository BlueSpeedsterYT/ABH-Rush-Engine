/// @description Init Dash Ring Code

	ringOuter = instance_create_depth(x, y, -10, objDashRingOuter);
	ringOuter.image_angle = image_angle;
	ringOuter.depth = -10;
	
	forcePower = 12;
	alarmTimer = 30;