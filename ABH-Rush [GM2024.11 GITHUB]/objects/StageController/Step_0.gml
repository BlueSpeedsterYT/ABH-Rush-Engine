/// @description Set up Stage Content

	// Calculate Time
	if(EnableTimer){
		GameData.StageTimer += 1000/60;
	}
	
	//Limit Time.
	GameData.StageTimer = min(GameData.StageTimer, 5999999);
	
	
	// Set Up Ring Drain.
	if(instance_exists(Player)){
		if(Player.form != PlayerFormNormal){
			if(GameData.ObjectTimer mod 60 == 0)
			{
				GameData.StageRings -= 1;
			}
		}
	}
	
	// Restart Room
	if(keyboard_check_pressed(ord("R")) && GameData.StageLives > 0){
		GameData.StageLives -= 1;
		room_restart();
	}
	
	// Hide/Show HUD
	if(keyboard_check_pressed(ord("H"))){
		with(uiHUD)
		{
			HUDShow = !HUDShow;
		}
	}
	
	// Pause the Game
	if(Player.allowMovement == true && keyboard_check_pressed(vk_enter))
	{
		show_debug_message("\n[WARNING]\nPause Object does NOT exist yet, please come back later when you somehow have one.")
	}