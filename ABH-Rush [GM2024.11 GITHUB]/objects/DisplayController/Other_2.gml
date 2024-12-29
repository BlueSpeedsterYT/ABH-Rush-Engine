/// @description Init Game Content Here

	// Set Game Title
	window_set_caption($"{GameTitle} - {GameVersion}");
	
	// Set Up Game Resolutions
	GameWidth = GlobalGameWidth;
	GameHeight = GlobalGameHeight;
	
	// Set up Game Data
	GameData.TotalRings = 0;
	GameData.CurrentCharacter = PlayerSonic;
	GameData.CurrentPartner = -1;
	GameData.CurrentLivesCount = 5;
	

	// Set up Game Window
	surface_resize(application_surface, GameWidth*WindowScale, GameHeight*WindowScale);
	window_set_size(GameWidth*WindowScale, GameHeight*WindowScale);
	window_center();
	
	// [DEV] Set Up Some Shit
	instance_create_depth(CameraViewX, CameraViewY, -99999, Audio);
	if(room == rmDisplayInit)
	{
		room_goto_next();
	}