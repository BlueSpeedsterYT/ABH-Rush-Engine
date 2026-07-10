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
	
	// Create UI Objects:
	instance_create_depth(x, y, -999999, uiHUD);
	instance_create_depth(x, y, -999999, uiTitleCard);
	
	// Set up Gameplay Data:
	EnableTimer = false; // Enables the Stage Timer.
	
	// End Stage Data
	StageClear = false;