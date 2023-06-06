/// @description Init Stage Data

	// Set up Title Card Data
	StageTitle = "Stage Title"; // Main Stage Name.
	StartType = PlayerStartIdle; // How a Stage *SHOULD* start.
	StageMission = "Mission Name"; // Mission Name.
	enum ActType {
		HUB = 0,
		Act1 = 1,
		Act2 = 2,
		Act3 = 3
	}
	StageAct = ActType.Act1;
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
	StageLives = GameData.CurrentLivesCount; // Current Stage Lives.
	StageScore = 0; // Current Stage Score.
	StageRingScore = 0;
	StageEnemyScore = 0;
	StageScoreMultiplier = 1; // Current Score Multiplier
	StageRingStep = 60; // Ring Subtraction Timer (Used when Sonic is Super.)
	
	// Set up Checkpoint Data
	StageCheckPointPassed = false;
	StageCheckPointX = -1;
	StageCheckPointY = -1;
	
	// End Stage Data
	StageClear = false;
	//StageClearRank[0] = 0;
	//StageClearTime[0] = 0;
	//StageClearScore[0] = 0;
	//StageClearCharacter[0] = -1;