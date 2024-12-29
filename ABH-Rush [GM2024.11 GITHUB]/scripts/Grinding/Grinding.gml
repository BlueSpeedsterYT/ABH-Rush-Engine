// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Grinding(){

	// Set Player Radius:
	var _Radius = mask/2;
	
	// Check if Player can Grind:
	if(speedY >= 0){
		allowGrinding = true;
	}else{
		allowGrinding = false;
	}
	
	// Check the Player status:
	if(allowGrinding && ground && collision_circle(x+asin*mask, y+acos*mask, _Radius, parRails, true, true)){
		if(actionCurrent == PlayerActionRoll){
			actionCurrent = PlayerActionNormal;
		}
		
		actionCurrent = PlayerActionGrind;
	}

	// Set Up Grinding Action Content:
	if(actionCurrent == PlayerActionGrind){
		// Set up Player Direction:
		if(speedX > 0){
			animDir = 1;
		}else if(speedX < 0){
			animDir = -1;
		}
		
		// Set up Grinding Speed:
		if(abs(speedX) < speedMidX){
			speedX += accel*animDir;
		}
		
		// Set the Player Speed to the Max if Boosting:
		if(instance_exists(fxBoost)){
			speedX = speedLimitX*animDir;
		}
		
		// Set up Player Speed on certain Slopes:
		speedX += -asin*(decel/6);
		
		// Reset Action if no longer on Rail:
		if(!ground || !collision_circle(x+asin*mask, y+acos*mask, _Radius, parRails, true, true)){
			actionCurrent = PlayerActionNormal;
		}
	}

}