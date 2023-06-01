/// @description Init Room Content

	// set up camera view size, borders and view settings
	view_visible[0] = true;
	view_enabled = true;
	camera_set_view_size(CameraViewID, GameWidth, GameHeight);
	camera_set_view_border(CameraViewID, GameWidth/2, GameHeight/2);
	if !instance_exists(Player) && !instance_exists(Camera)
	{
		room_width = GameWidth;
		room_height = GameHeight;
	}