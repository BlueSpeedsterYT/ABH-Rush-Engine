/// @description Init Room Content

	// Set up camera view size, borders and view settings
	camera_set_view_size(CameraViewID, GameData.GameWidth, GameData.GameHeight);
	surface_resize(application_surface, GameData.GameWidth, GameData.GameHeight);
	
	if(!instance_exists(Player))
	{
		room_width = GameWidth;
		room_height = GameHeight;
	}