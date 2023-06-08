/// @description Set up Stage Content

	// Calculate Time
	if(EnableTimer){
		if(!isCountDown){
			if(StageTimer < StageTimeLimit){
				StageTimer += 1000/60;
			}
		}
		else
		{
			if(CountdownTimer > 0){
				CountdownTimer -= 1000/60;
			}
		}
	}
	
	// Set up HUD systems
	if(HUDShow){
		switch(StageHUDType){
			case HUDType.Legacy:{
				xHUD = lerp(xHUD, 0, 0.2);
				xHUD2 = lerp(xHUD2, 0, 0.2);
				yHUD = lerp(yHUD, 0, 0.2);
				yHUD2 = lerp(yHUD2, 0, 0.2);
			}
			break;
			
			case HUDType.Proto:{
				HUDAlpha = lerp(HUDAlpha, 1, 0.2);
			}
			break;
		}
	}
	else{
		switch(StageHUDType){
			case HUDType.Legacy:{
				xHUD = lerp(xHUD, -CameraViewWidth/2, 0.2);
				xHUD2 = lerp(xHUD2, CameraViewWidth/2, 0.2);
				yHUD = lerp(yHUD, -CameraViewHeight/2, 0.2);
				yHUD2 = lerp(yHUD2, CameraViewHeight/2, 0.2);
			}
			break;
			
			case HUDType.Proto:{
				HUDAlpha = lerp(HUDAlpha, 0, 0.2);
			}
			break;
		}
	}
	
	// Set Up Ring Drain.
	if(instance_exists(Player)){
		if(Player.form != PlayerFormNormal){
			StageRingStep--
			if(StageRingStep <= 0)
			{
				StageRings -= 1;
				StageRingStep = 60;
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
		HUDShow = !HUDShow;
	}