function TakeDamage(){
	//taking damage
	if actionCurrent == PlayerActionDamage
	{
	    if ground
	    {    
	        speedX = 0
	        speedY = 0
	    }    
		
	    if image_index >= 21
	    {
	        image_index = 0
	        actionCurrent = PlayerActionNormal
	    }
	}
}