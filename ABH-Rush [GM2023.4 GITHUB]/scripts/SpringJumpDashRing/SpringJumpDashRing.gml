// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpringJumpDashRing(){

	if (actionCurrent == PlayerActionSpring || actionCurrent == PlayerActionDashRing)
	{
	    if speedX > 0
	        animDir = 1;
	    else if speedX < 0
	        animDir = -1;
        
	    if ground
	        actionCurrent = PlayerActionNormal;
	} 

}