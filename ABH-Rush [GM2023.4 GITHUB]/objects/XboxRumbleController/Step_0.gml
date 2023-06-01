/// @description Start up the Controller Rumble

	// Check if Rumble is enabled and that the Player Input is Xinput (Keyboard would *NOT* work)
	if enableRumble && Player.inputType == InputXbox && gamepad_is_connected(0){
		rumbleTimer -= 1;
		gamepad_set_vibration(0, 1, 1);
		if(rumbleTimer <= 0){
			instance_destroy();
		}
	}else if Player.inputType == InputKeyboard || !gamepad_is_connected(0){
		show_debug_message("\n[WARNING]\nCurrent Input Method is *NOT* XInput, please use an XInput-based controller.")
	}