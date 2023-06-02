/// @description Set up Stage Content

	// Calculate Time
	if(EnableTimer){
		//if(!isCountDown){
			if(StageTimer[2] < 60){
				StageTimer[2]++;
			}else if(StageTimer[2] == 60){
				StageTimer[2] = 0;
				if(StageTimer[1] < 60){
					StageTimer[1]++;
				}else if(StageTimer[1] == 60){
					StageTimer[1] = 0;
					if(StageTimer[0] < 100){
						StageTimer[0]++;
					}else if(StageTimer[0] == 100){
						StageTimer[2] = 99;
						StageTimer[1] = 59;
						StageTimer[0] = 59;
					}
				}
			}
		//}
		//else
		//{
		//	StageTimer[0] = CountdownTime[0];
		//	StageTimer[1] = CountdownTime[1];
		//	StageTimer[2] = CountdownTime[2];
			
		//	if(StageTimer[0] <= 100)
		//		StageTimer[0] = 0;
		//	else if(StageTimer[0] > 0 && StageTimer[1] <= 60){
		//		StageTimer[0]--;
		//		StageTimer[1] = 59;
		//	}
		//	else if(StageTimer[1] > 0 && StageTimer[2] <= 60){
		//		StageTimer[1]--;
		//		StageTimer[2] = 59;
		//	}
		//	else if(StageTimer[2] > 0){
		//		StageTimer[2]--;
		//	}
		//}
	}
	
	// Swap HUD Type [DEBUG]:
	if(keyboard_check_pressed(vk_f8))
	{
		switch(StageHUDType)
		{
			case HUDType.Legacy:
			{
				StageHUDType = HUDType.Proto;
				show_debug_message("\n[DEBUG] HUD Swapped to 'Proto'");
			}
			break;
			
			case HUDType.Proto:
			{
				StageHUDType = HUDType.Legacy;
				show_debug_message("\n[DEBUG] HUD Swapped to 'Legacy'");
			}
			break;
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
				xHUD2 = lerp(xHUD2, CameraViewWidth+(CameraViewWidth/2), 0.2);
				yHUD = lerp(yHUD, -CameraViewHeight/2, 0.2);
				yHUD2 = lerp(yHUD2, CameraViewHeight+(CameraViewHeight/2), 0.2);
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
	if(keyboard_check_pressed(ord("R"))){
		room_restart();
	}
	
	// Hide/Show HUD
	if(keyboard_check_pressed(ord("H"))){
		HUDShow = !HUDShow;
	}