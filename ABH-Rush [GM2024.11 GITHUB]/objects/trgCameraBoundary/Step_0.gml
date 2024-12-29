/// @description Player Check

	if(!place_meeting(x, y, Player) && isInactive == false){
		Camera.TargetBottom = room_height;
		isInactive = true;
	}