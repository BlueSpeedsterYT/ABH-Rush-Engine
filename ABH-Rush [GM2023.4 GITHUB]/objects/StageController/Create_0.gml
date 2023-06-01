/// @description Init Stage Data

	// Set up Title Card Data
	StageTitle = "Stage Title"; // Main Stage Name.
	StartType = PlayerStartIdle; // How a Stage *SHOULD* start.
	StageMission = "Mission Name"; // Mission Name.
	
	// Set up Gameplay Data:
	StageRings = 0; // Current Ring Count.
	StageTimer = 0; // Current Stage Timer.
	StageLives = 5; // Current Stage Lives.
	StageRingStep = 60; // Ring Subtraction Timer (Used when Sonic is Super.)
	StageClear = false;
	
	// Set up Checkpoint Data
	StageCheckPointPassed = false;
	StageCheckPointX = -1;
	StageCheckPointY = -1;