/// @description Init Camera Code
	
	// Camera Settings
	HalfWidth = GlobalGameWidth/2;
	HalfHeight = GlobalGameHeight/2;
	ShockwaveTimer = 0;
	ShockwaveEnabled = false;
	ShockwaveEffectX = 0;
	ShockwaveEffectY = 0;
	
	// Camera Positions
	CameraX = x;
	CameraY = y;
	CamFollow = true;
	CamFollowTimer = 0;
	CameraShiftX = 0;
	CameraShiftY = 0;
	LimitLeft = 0;
	LimitRight = room_width;
	LimitTop = 0;
	LimitBottom = room_height;
	
	// Object ID
	ObjectID = Player;
	
	// Set Things Right
	camera_set_view_target(CameraViewID, id);