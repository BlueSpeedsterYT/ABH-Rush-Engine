/// @description Handle Camera Code

	CameraX = clamp(CameraX, 0, room_width-GameWidth);
	CameraY = clamp(CameraY, 0, room_height-GameHeight);

	if ObjectID != noone {
		CameraX = ObjectID.x;
		CameraY = ObjectID.y;
	}
	
	
	camera_set_view_pos(CameraViewID, floor(ObjectID.x), floor(ObjectID.y));
	//camera_set_view_pos(CameraViewID, floor(CameraX), floor(CameraY));
	
	