// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function QTESystem(){

	// Set up QTE stuff:
	if(actionCurrent == PlayerActionQTEInit){
		// Set Gravity to 0:
		grav = 0;
		
		// Set up Player X Speed depending on 'animDir':
		if(abs(speedX) > 0){
			speedX -= 0.125*animDir;
		}else{
			speedX = 0.625*animDir;
		}
		
		// Set Player Y Speed too.
		if(speedY < 0){
			speedY += 0.125;
		}else{
			speedY = -0.3125;
		}
	}

	// QTE is Successful
	if(actionCurrent == PlayerActionQTESuccess){
		// Set Player Speed to 9:
		speedX = animDir*9;
		
		// Reset Action on Ground:
		if(ground){
			actionCurrent = PlayerActionNormal;
		}
	}
	
	// QTE has Failed
	if(actionCurrent == PlayerActionQTEFailure){
		// Increase Player Speed to their DOOM (2016):
		speedX += animDir*accel*2;
		
		// Reset Action on Ground:
		if(ground){
			actionCurrent = PlayerActionNormal;
		}
	}

}