/// @description Init Camera Code
	
	// Camera Settings
	ShockwaveTimer = 0;
	ShockwaveEnabled = false;
	ShockwaveEffect = 10;
	CamFollow = true;
	CamFollowTimer = 0;
	CamType = GameCamera;
	CamMode = 0;
	
	// Camera Positions
	CameraX = x;
	CameraY = y;
	CameraOffsetX = 0;
	CameraOffsetY = 0;
	
	// Camera Limits
	TargetLeft = 0;
	TargetRight = room_width;
	TargetTop = 0;
	TargetBottom = room_height;
	LimitLeft = 0;
	LimitRight = room_width;
	LimitTop = 0;
	LimitBottom = room_height;
	
	// Object ID
	ObjectID = Player;
	
	// Set Things Right
	camera_set_view_target(CameraViewID, id);