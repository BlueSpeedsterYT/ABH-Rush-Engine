/// @description Start Stage

	//Reset stage data
	GameData.StageTimer = 0;
	GameData.StageRings = 0;
	
	//Position player to the checkpoint
	if(GameData.StageCheckPointID != noone)
	{
		Player.x = GameData.StageCheckPointID.x;
		Player.y = GameData.StageCheckPointID.y;
		GameData.StageTimer = GameData.StageCheckPointTime;
	}
