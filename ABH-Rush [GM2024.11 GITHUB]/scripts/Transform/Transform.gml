function Transform(){

	if !ground && actionCurrent == PlayerActionJump && keySpecial && StageManager.StageRings >= 50 && form == PlayerFormNormal
	{
	    form = PlayerFormSuper;
	    animIndex = 0;
	    actionCurrent = PlayerActionTransform;
	}

	if actionCurrent == PlayerActionTransform
	{
	    speedX = 0
	    speedY = 0
	    if animIndex >= 16
	        actionCurrent = PlayerActionNormal   
	}

	if form != PlayerFormNormal && StageManager.StageRings <= 0
	{
	    form = PlayerFormNormal;
	}

}