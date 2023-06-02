/// @description [DEV] Custom Dev Stuff


//// Set Up Room Swapping
//if keyboard_check_pressed(vk_pageup){
//	if(room > room_first)
//		room_goto_previous();
//	else
//		room = room_last;
//}else if keyboard_check_pressed(vk_pagedown){
//	if(room < room_last)
//		room_goto_next();
//	else
//		room = room_first;
//}


	// Swap Resolutions
	if(keyboard_check_pressed(ord("1"))){
		if(GameData.GameWidth != 240){
			GameData.GameWidth = 240;
			GameData.GameHeight = 160;
		}
	}
	
	if(keyboard_check_pressed(ord("2"))){
		if(GameData.GameWidth != 320){
			GameData.GameWidth = 320;
			GameData.GameHeight = 224;
		}
	}
	
	if(keyboard_check_pressed(ord("3"))){
		if(GameData.GameWidth != 456){
			GameData.GameWidth = 456;
			GameData.GameHeight = 256;
		}
	}
	
	if(keyboard_check_pressed(ord("4"))){
		if(GameData.GameWidth != 640){
			GameData.GameWidth = 640;
			GameData.GameHeight = 360;
		}
	}
	
	surface_resize(application_surface, GameData.GameWidth*WindowScale, GameData.GameHeight*WindowScale);
	window_set_size(GameData.GameWidth*WindowScale, GameData.GameHeight*WindowScale);
	window_center();