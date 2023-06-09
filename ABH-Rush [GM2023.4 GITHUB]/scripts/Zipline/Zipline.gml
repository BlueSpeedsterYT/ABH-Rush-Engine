// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Zipline(){

	// Starting Zipline
	if(actionCurrent == PlayerActionZipStart){
		animDir = 1;
		speedY = 0;
		y = instance_nearest(x,y,objZiplineInit).y + 2;
		speedX += 0.125;
	}

	// Proper Zipline
	if(actionCurrent == PlayerActionZipTravel){
		speedX = 0;
		speedY = 0;
		move_towards_point(instance_nearest(x,y,objZiplineFinish).x,instance_nearest(x,y,objZiplineFinish).y-12,speedZip)
		if(speedZip < speedLimitX){
			speedZip += 0.125;
		}
		if(instance_exists(fxBoost)){
			speedZip = speedLimitX;
		}
	}

}