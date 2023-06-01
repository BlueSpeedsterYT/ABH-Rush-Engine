// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DuckRoll(){

	//rolling ducking
	if keyDown && ground && (actionCurrent == PlayerActionNormal || actionCurrent == PlayerActionJump)
	{
	    if abs(speedX) < 1.03125 {speedX=0; actionCurrent = PlayerActionLookDown; animIndex = 0}
	    if abs(speedX) >= 1.03125 {actionCurrent = PlayerActionRoll;}    
	}


	if actionCurrent == PlayerActionLookDown && !keyDown /*&& animIndex >= 5*/{actionCurrent=PlayerActionNormal;}///un duck
	if actionCurrent == PlayerActionRoll && abs(speedX) < 0.5 && ground {actionCurrent =PlayerActionNormal;}///un roll
	if actionCurrent == PlayerActionRoll && speedY > 0 && !ground && ColScriptGround(mask)//un roll on ground
	{actionCurrent = PlayerActionNormal;}

}