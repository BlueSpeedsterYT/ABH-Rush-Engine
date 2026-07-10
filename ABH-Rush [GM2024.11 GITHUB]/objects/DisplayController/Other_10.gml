/// @description Update Window Resolution

	//Set up Window Title.
	window_set_caption(string(GameData.GameTitle) + " - " + string(GameData.GameVersion));
	
	// Set up camera view size, window and surface
	camera_set_view_size(CameraViewID, GameData.GameWidth, GameData.GameHeight);
	window_set_size(GameData.GameWidth * GameData.WindowScale, GameData.GameHeight * GameData.WindowScale)
	surface_resize(application_surface, GameData.GameWidth, GameData.GameHeight);
	
	//Center it.
	window_center();