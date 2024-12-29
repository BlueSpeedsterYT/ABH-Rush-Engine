/// @description Collide with Player

	if(isInactive == true && Player.actionCurrent != PlayerActionDead)
	{
		Camera.TargetBottom = bbox_bottom;
		isInactive = false;
	}
