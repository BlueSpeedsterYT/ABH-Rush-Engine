/// @description Title Card Script Code
	
	if(titleState == 0)
	{
		titleX = -(CameraViewWidth/2);
		titleY = (CameraViewHeight/2)-(string_height(Stage.StageTitle)/2);
		actX = -(CameraViewWidth/2);
		actY = (CameraViewHeight/2)+(string_height(Stage.StageTitle)/2);
		//titleTimer[0] -= 1;
		//if(titleTimer[0] == 1){
			if(titleAlpha[1] > 0){
				titleAlpha[1] -= 0.1;
			}else if(titleAlpha[1] == 0){
				titleTimer[1] -= 1;
				if(titleTimer[1] == 1){
					titleState = 1;
				};
			};
		//};
	};
		
	if(titleState == 1){
		titleX = lerp(titleX, CameraViewWidth/2, 0.8);
		actX = lerp(actX, CameraViewWidth/2, 0.8);
		musicY = lerp(musicY, 16, 0.6);
		musicX = lerp(musicX, 16, 0.6);
		
		if(titleAlpha[3] < 1){
			titleAlpha[3] += 0.1;
		}else if(titleAlpha[3] == 1){
			if(titleTimer[0] > 0){
				titleTimer[0]--;
				if(titleTimer[0] == 1){
					titleState = 2;
				}
			}
		}
	}
		
	if(titleState == 2){
		if(titleAlpha[2] < 1){
			titleAlpha[2] += 0.1;
			if(titleAlpha[2] == 1){
				titleState = 3;
			}
		}
	}
		
	if(titleState == 3){
		titleX = -(CameraViewWidth/2);
		titleY = (CameraViewHeight/2)-(string_height(Stage.StageTitle)/2);
		actX = -(CameraViewWidth/2);
		actY = (CameraViewHeight/2)+(string_height(Stage.StageTitle)/2);
	
		musicX = -CameraViewWidth;
		musicY = -(CameraViewHeight/2);
		titleAlpha[0] = 0;
		titleAlpha[3] = 0;
		titleState = 4;
	}
		
	if(titleState == 4)
	{
		Player.allowMovement = true;
		if(titleAlpha[2] > 0){
			titleAlpha[2] -= 0.1;
			if(titleAlpha[2] == 0){
				titleState = 5;
			}
		}
	};
	
	if(titleState == 5)
	{
		Stage.EnableTimer = true;
		Stage.HUDShow = true;
		instance_destroy();
	};