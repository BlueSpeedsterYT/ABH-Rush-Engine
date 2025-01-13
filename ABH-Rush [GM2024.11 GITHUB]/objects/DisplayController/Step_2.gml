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
	
	surface_resize(application_surface, GameWidth*WindowScale, GameHeight*WindowScale);
	window_set_size(GameWidth*WindowScale, GameHeight*WindowScale);
	window_center();