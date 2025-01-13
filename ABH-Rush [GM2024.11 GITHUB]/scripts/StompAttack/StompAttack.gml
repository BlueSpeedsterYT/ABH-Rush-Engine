// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StompAttack(){

	if allowStomp && (actionCurrent == PlayerActionNormal || actionCurrent == PlayerActionJump) && !ground && keyAttackPressed
	{
		speedX = 0;
		switch(character)
		{
			case PlayerSonic:
			{
				actionCurrent = PlayerActionStomp;
			}
			break;
		}
		allowStomp = false;
	}
	if !allowStomp && ground
		allowStomp = true;
		
	if actionCurrent == PlayerActionStompShadow {
		speedY = 0;
		speedX = 0;
		if image_index >= 6 {
			speedX = animDir*5;
			actionCurrent = PlayerActionStomp;
		}
	}
	
	if actionCurrent == PlayerActionStomp {
		speedY = speedLimitY;
		if ground {
			gamepad_set_rumble(30);
			EnableShockwave(30);
			actionCurrent = PlayerActionNormal;
			image_index = 0;
			speedY = 0;
			speedX = 0;
		}
	}

}