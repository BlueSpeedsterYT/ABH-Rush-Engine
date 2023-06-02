// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LookUp(){

	// Set up Inputs
	if keyUp && ground && actionCurrent == PlayerActionLookUp {
		lookTimer += 2;
	}
	if keyUp && ground && actionCurrent == PlayerActionNormal {
		if abs(speedX) < 0.2 {
			speedX = 0;
			actionCurrent = PlayerActionLookUp;
			animIndex = 0;
		}
	}
	if (!keyUp || !ground || keyLeft || keyRight) && actionCurrent == PlayerActionLookUp {
		actionCurrent = PlayerActionNormal;
		lookTimer = 0;
	}

}