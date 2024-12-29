// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DashRamp(){

	if actionCurrent == PlayerActionDashRamp
	{
	    speedX = 12*animDir;
	    if ground
	    {
	        actionCurrent = PlayerActionNormal;
	    }
	}

}