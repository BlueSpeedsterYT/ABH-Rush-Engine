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


	// Window Size
	if(keyboard_check_pressed(vk_f4)){
		if(WindowScale < 4){
			WindowScale += 1;
		}else if(WindowScale == 4){
			WindowScale = 1;
		}
	}

	// Swap Resolutions
	if(keyboard_check_pressed(ord("1"))){
		if(GameWidth != 240){
			GameWidth = 240;
			GameHeight = 160;
		}
	}
	
	if(keyboard_check_pressed(ord("2"))){
		if(GameWidth != 320){
			GameWidth = 320;
			GameHeight = 224;
		}
	}
	
	if(keyboard_check_pressed(ord("3"))){
		if(GameWidth != 456){
			GameWidth = 456;
			GameHeight = 256;
		}
	}
	
	if(keyboard_check_pressed(ord("4"))){
		if(GameWidth != 640){
			GameWidth = 640;
			GameHeight = 360;
		}
	}
	
	surface_resize(application_surface, GameWidth*WindowScale, GameHeight*WindowScale);
	window_set_size(GameWidth*WindowScale, GameHeight*WindowScale);
	window_center();