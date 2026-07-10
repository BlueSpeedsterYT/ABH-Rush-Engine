/// @description Init Camera Code
	
	// Init Camera View Stuff
	camera_set_view_target(CameraViewID, id);
	camera_set_view_border(CameraViewID, (GameData.GameWidth/2), (GameData.GameHeight/2));
	
	// Init Camera Variables
	CamTarget = Player;
	CamCenterX = (GameData.GameWidth/2);
	CamCenterY = (GameData.GameHeight/2);
	CamDelay = 0;
	CamZoom = 1;
	CamZoomTarget = CamZoom;
	CamInterpolationSpeedX = 0.3;
	CamInterpolationSpeedY = 0.3;
	CamShiftX = 0;
	CamShiftY = 0;
	CamShakeX = 0;
	CamShakeY = 0;
	CamShakeYOffset = 48;
	
	// Init Camera Bounds
	BoundSpeed = 2;
	LimitBottom = room_height;
	LimitRight = room_width;
	LimitTop = 0;
	LimitLeft = 0;
	TargetBottom = room_height;
	TargetRight = room_width;
	TargetTop = 0;
	TargetLeft = 0;