/// @description Init Stage Data

	// Set up Title Card Data
	StageTitle = "Stage Title"; // Main Stage Name.
	StartType = PlayerStartIdle; // How a Stage *SHOULD* start.
	StageMission = "Mission Name"; // Mission Name.
	
	// Set up Gameplay Data:
	StageHUDType = GameHUD;
	StageRings = 0; // Current Ring Count.
	HUDShow = true;
	HUDAlpha = 0;
	xHUD = -CameraViewWidth/2;
	xHUD2 = CameraViewWidth+(CameraViewWidth/2);
	yHUD = -CameraViewHeight/2;
	yHUD2 = CameraViewHeight+(CameraViewHeight/2);
	EnableTimer = true; // Enables the Stage Timer.
	isCountDown = false; // Is the stage using a Countdown timer.
	CountdownTime[0] = 99;
	CountdownTime[1] = 59;
	CountdownTime[2] = 59;
	StageTimer[0] = 0; // Current Stage Timer.
	StageTimer[1] = 0;
	StageTimer[2] = 0;
	TotalStageTimerText = $"{StringNumberZero(StageTimer[2], 2)}:{StringNumberZero(StageTimer[1], 2)}.{StringNumberZero(StageTimer[0], 2)}"
	StageLives = 5; // Current Stage Lives.
	StageRingStep = 60; // Ring Subtraction Timer (Used when Sonic is Super.)
	StageClear = false;
	
	// Set up Checkpoint Data
	StageCheckPointPassed = false;
	StageCheckPointX = -1;
	StageCheckPointY = -1;