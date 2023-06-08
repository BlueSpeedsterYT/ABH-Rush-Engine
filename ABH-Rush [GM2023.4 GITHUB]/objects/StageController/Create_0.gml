/// @description Init Stage Data

	// Set up Title Card Data
	StageTitle = "Stage Title"; // Main Stage Name.
	StartType = PlayerStartIdle; // How a Stage *SHOULD* start.
	StageMission = "Mission Name"; // Mission Name.
	StageAct = StageAct1;
	StageType = StageNormal;
	//BestRank = GetStageRank();
	//BestTime = GetStageTime();
	//BestScore = GetStageScore();
	//BestCharacter = GetStageCharacter();
	
	// Set up Gameplay Data:
	StageHUDType = GameHUD;
	StageRings = 0; // Current Ring Count.
	HUDShow = true;
	HUDAlpha = 0;
	xHUD = -CameraViewWidth/2;
	xHUD2 = CameraViewWidth/2;
	yHUD = -CameraViewHeight/2;
	yHUD2 = CameraViewHeight/2;
	EnableTimer = true; // Enables the Stage Timer.
	isCountDown = false; // Is the stage using a Countdown timer.
	StageTimeLimit = 5999999;
	CountdownTimer = 0;
	StageTimer = 0; // Current Stage Timer.
	GameData.StageLives = GameData.CurrentLivesCount; // Current Stage Lives.
	GameData.StageScore = 0; // Current Stage Score.
	GameData.StageRingScore = 0;
	GameData.StageEnemyScore = 0;
	GameData.StageScoreMultiplier = 1; // Current Score Multiplier
	StageRingStep = 60; // Ring Subtraction Timer (Used when Sonic is Super.)
	
	// Set up Checkpoint Data
	GameData.StageCheckPointPassed = false;
	GameData.StageCheckPointX = -1;
	GameData.StageCheckPointY = -1;
	
	// End Stage Data
	StageClear = false;
	//StageClearRank[0] = 0;
	//StageClearTime[0] = 0;
	//StageClearScore[0] = 0;
	//StageClearCharacter[0] = -1;