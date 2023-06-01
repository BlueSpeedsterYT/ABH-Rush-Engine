/// @description Init Camera Code
	
	// Camera Settings
	HalfWidth = CameraViewWidth/2;
	HalfHeight = CameraViewHeight/2;
	ShockwaveEnabled = false;
	ShockwaveTimer = -1;
	ShockwaveEffectX = 0;
	ShockwaveEffectY = 0;
	
	// Camera Positions
	CameraX = x;
	CameraY = y;
	
	// Object ID
	ObjectID = Player;
	camera_set_view_target(CameraViewID, ObjectID);