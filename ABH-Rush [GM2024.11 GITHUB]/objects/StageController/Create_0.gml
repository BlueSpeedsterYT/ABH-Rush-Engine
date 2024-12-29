/// @description Init Stage Data

	// Set up Title Card Data
	StageTitle = "Stage Title"; // Main Stage Name.
	StartType = PlayerStartIdle; // How a Stage *SHOULD* start.
	StageMissionName = "Mission Name"; // Mission Name.
	StageAct = StageAct1;
	StageMissionType = StageMissionMain;
	StageVersionType = StageNormal;
	TitleBGM = "DUMMY";
	SourceBGM = "DUMMY";
	//BestRank = GetStageRank();
	//BestTime = GetStageTime();
	//BestScore = GetStageScore();
	//BestCharacter = GetStageCharacter();
	
	// Create Title Card:
	instance_create_depth(x, y, -999999, uiTitleCard);
	
	// Set up Gameplay Data:
	StageHUDType = GameHUD;
	StageRings = 0; // Current Ring Count.
	HUDShow = false;
	HUDAlpha = 0;
	xHUD = -CameraViewWidth/2;
	xHUD2 = CameraViewWidth/2;
	yHUD = -CameraViewHeight/2;
	yHUD2 = CameraViewHeight/2;
	EnableTimer = false; // Enables the Stage Timer.
	isCountDown = false; // Is the stage using a Countdown timer.
	StageTimeLimit = 5999999;
	StageTimer = 0; // Current Stage Timer.
	ObjectTimer = 0; // Object Timer.
	GameData.StageLives = GameData.CurrentLivesCount; // Current Stage Lives.
	GameData.StageScore = 0; // Current Stage Score.
	GameData.StageRingScore = 0;
	GameData.StageEnemyScore = 0;
	GameData.StageScoreMultiplier = 1; // Current Score Multiplier
	StageRingStep = 60; // Ring Subtraction Timer (Used when Sonic is Super.)
	
	// Set up Checkpoint Data:
	GameData.StageCheckPointPassed = false;
	GameData.StageCheckPointX = -1;
	GameData.StageCheckPointY = -1;
	
	// End Stage Data
	StageClear = false;
	//StageClearRank[0] = 0;
	//StageClearTime[0] = 0;
	//StageClearScore[0] = 0;
	//StageClearCharacter[0] = -1;