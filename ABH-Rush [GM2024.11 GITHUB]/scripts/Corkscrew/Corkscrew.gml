function Corkscrew(){

	//corkscrew movement (main movement is in corkscrew object)
	if actionCurrent == PlayerActionCorkscrew
	{
	    speedY = 0
	    angle = 0
	    if ground || abs(speedX) < 4
	    {
	        actionCurrent = PlayerActionNormal
	        image_index = 0
	    }
    
	}

	if actionCurrent == PlayerActionRollCorkscrew // corkscrew while rolling
	{
	    speedY = 0
	    angle = 0
	    if ground || abs(speedX) < 4
	    {
	        actionCurrent = PlayerActionRoll
	        image_index = 0
	    }
	}

}