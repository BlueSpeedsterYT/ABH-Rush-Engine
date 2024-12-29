function TakeDamage(){
	//taking damage
	if actionCurrent == PlayerActionDamage
	{
	    if ground
	    {    
	        speedX = 0
	        speedY = 0
	    }    
		
	    if animIndex >= 21
	    {
	        animIndex = 0
	        actionCurrent = PlayerActionNormal
	    }
	}
}