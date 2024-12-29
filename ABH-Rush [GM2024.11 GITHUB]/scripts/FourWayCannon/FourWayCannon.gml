function FourWayCannon(){

	//4 way cannon
	if actionCurrent == PlayerActionCannon
	{
	    speedY = 0;
	    speedX = 0;
		var move_x = (keyRight - keyLeft), move_y = (keyDown - keyUp);
	    if (keyJump)
	    {
			if(move_y != 0)
			{
				newAlarm[0] = 0;
				speedY = 10*move_y;
				actionCurrent = PlayerActionNormal;
			}
			else if(move_x != 0)
			{
				newAlarm[0] = 30;
				grav = 0
				speedX = 9*move_x;
				actionCurrent = PlayerActionDashRing;
			}
			
	        //audio_play_sound(snd_4waycanon_blast,1,false)
	        //audio_play_sound(snd_rainbowring,1,false)
	    }
	}


}