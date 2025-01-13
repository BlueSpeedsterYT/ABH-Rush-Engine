function Transform(){

	if !ground && actionCurrent == PlayerActionJump && keySpecial && StageManager.StageRings >= 50 && form == PlayerFormNormal
	{
	    form = PlayerFormSuper;
	    image_index = 0;
	    actionCurrent = PlayerActionTransform;
	}

	if actionCurrent == PlayerActionTransform
	{
	    speedX = 0
	    speedY = 0
	    if image_index >= 16
	        actionCurrent = PlayerActionNormal   
	}

	if form != PlayerFormNormal && StageManager.StageRings <= 0
	{
	    form = PlayerFormNormal;
	}

}