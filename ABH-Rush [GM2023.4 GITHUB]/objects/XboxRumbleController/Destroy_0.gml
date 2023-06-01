/// @description End the controller rumble

	if gamepad_is_connected(0){
		gamepad_set_vibration(0, 0, 0);
	}