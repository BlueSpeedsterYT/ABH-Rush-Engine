// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DashPad(){

	if actionCurrent == PlayerActionDashPad
	{
	    if speedX > 0
	        speedX = speedLimitX;
	    else if speedX < 0
	        speedX = -speedLimitX;
	}

}