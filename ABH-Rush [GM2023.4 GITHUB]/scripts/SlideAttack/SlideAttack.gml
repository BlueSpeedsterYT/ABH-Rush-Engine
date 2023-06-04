// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SlideAttack(){

	switch(character)
	{
	    case PlayerSonic:
	    {
	        if ground && (actionCurrent == PlayerActionNormal || actionCurrent == PlayerActionRoll) && abs(speedX) >= 3 && keyAttack
	        {
	            animSprite = sprSonicJog;
	            actionCurrent = PlayerActionSlide;
	            //audio_play_sound(snd_SonicAttack3,1,false);
	        }     
			
	        if actionCurrent == PlayerActionSlide
	        {
	            if animDir == 1 && keyLeft
	                speedX -= decel;
	            else if animDir == -1 && keyRight
	                speedX += decel;
	            if speedX > 0 
	                speedX -= fric; 
	            if speedX < 0 
	                speedX += fric;
        
	            if abs(speedX) < 1 || !ground
	                actionCurrent = PlayerActionNormal; 
				if !keyAttack
					actionCurrent = PlayerActionRoll;
	        }
	    }
	    break;
    
	    //case PlayerShadow:
	    //{
	    //    if ground && actionCurrent == PlayerActionNormal && keyAttack
	    //    {
	    //        animIndex = 0
	    //        if abs(speedX) < 10
	    //            speedX = 10*animDir 
	    //        actionCurrent = PlayerActionSlide
	    //        audio_play_sound(snd_Shadow_Homing2,1,false)
	    //        audio_play_sound(snd_Shadow_Warp,1,false)
	    //    }     
	    //    if actionCurrent == PlayerActionSlide
	    //    {
	    //        if speedX > 0 
	    //            speedX -= fric; 
	    //        if speedX < 0 
	    //            speedX += fric;
        
	    //        if animIndex >= 24 || !ground
	    //            actionCurrent = PlayerActionNormal        
	    //    }      
	    //}
	    //break;
	}

}