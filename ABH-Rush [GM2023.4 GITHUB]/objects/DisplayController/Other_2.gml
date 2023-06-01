/// @description Init Game Content Here

	// Set Game Title
	window_set_caption($"{GameTitle} - {GameVersion}");
	
	// Set up Game Window
	window_set_size(GameWidth*2, GameHeight*2);
	window_center();
	
	// Set up GUI Layer
	display_set_ui_visibility(true);
	display_set_gui_size(GameWidth, GameHeight);
	
	// [DEV] Set Up Some Shit
	instance_create_depth(CameraViewX, CameraViewY, -99999, Audio);
	if(room == rmDisplayInit)
	{
		room_goto_next();
	}