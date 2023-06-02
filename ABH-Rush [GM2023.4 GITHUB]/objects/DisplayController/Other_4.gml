/// @description Init Room Content

	// set up camera view size, borders and view settings
	if !instance_exists(Player)
	{
		room_width = GameData.GameWidth;
		room_height = GameData.GameHeight;
	}