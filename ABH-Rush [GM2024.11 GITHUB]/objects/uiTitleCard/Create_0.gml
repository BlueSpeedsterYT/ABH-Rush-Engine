/// @description Init Title Card Code

	titleX = -(CameraViewWidth/2);
	titleY = (CameraViewHeight/2)-(string_height(Stage.StageTitle)/2);
	actX = -(CameraViewWidth/2);
	actY = (CameraViewHeight/2)+(string_height(Stage.StageTitle)/2);
	
	musicX = -CameraViewWidth;
	musicY = -(CameraViewHeight/2);
	
	titleAlpha[0] = 1;
	titleAlpha[1] = 1;
	titleAlpha[2] = 0;
	titleAlpha[3] = 0;
	
	titleState = 0;
	titleTimer[0] = 85;
	titleTimer[1] = 25;