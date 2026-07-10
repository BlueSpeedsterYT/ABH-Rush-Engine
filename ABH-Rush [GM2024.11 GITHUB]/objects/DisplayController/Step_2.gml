/// @description Update Resolution Scale

	// Window Size
	if(keyboard_check_pressed(vk_f4)){
		GameData.WindowScale++;
		if(GameData.WindowScale > 4) GameData.WindowScale = 1;
		event_user(0);
	}