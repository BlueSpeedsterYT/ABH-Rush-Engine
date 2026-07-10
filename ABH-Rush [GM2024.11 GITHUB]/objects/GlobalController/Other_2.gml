/// @description Init Game Content Here

	// Set Game Title
	GameData.GameTitle = "ABH-Rush Engine";
	GameData.GameVersion = "V. 1.75";
	
	// Set Up Game Resolutions
	GameData.GameWidth = GlobalGameWidth;
	GameData.GameHeight = GlobalGameHeight;
	GameData.WindowScale = 2;
	
	// Set Up Checkpoint Data
	GameData.StageCheckPoint = ds_list_create();
	GameData.StageCheckPointID = noone;
	GameData.StageCheckPointTime = 0;
	
	// Set Up Game Data
	GameData.StageTimer = 0;
	GameData.ObjectTimer = 0;
	GameData.StageRings = 0;
	GameData.TotalRings = 0;
	GameData.CurrentCharacter = PlayerSonic;
	GameData.StageLives = 5; // Current Stage Lives.
	GameData.StageScoreTotal = 0; // Current Stage Score.
	GameData.StageScoreMain = 0;
	GameData.StageRingScore = 0;
	GameData.StageEnemyScore = 0;
	GameData.StageScoreMultiplier = 1; // Current Score Multiplier
	
	// Set Up Global Persistent Objects
	instance_create_depth(CameraViewX, CameraViewY, -99999, Audio);
	instance_create_depth(CameraViewX, CameraViewY, -99999, Display);
	
	//Bye!!!
	room_goto_next();