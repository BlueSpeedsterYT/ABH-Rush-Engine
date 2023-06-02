/// @description Set up Custom Alarms

	if(CamFollowTimer > 0)
	{
		CamFollowTimer -= 1;
		if CamFollowTimer == 1 {
			CamFollow = true;
		}
	}
	
	if(ShockwaveTimer > 0)
	{
		ShockwaveTimer -= 1;
		if ShockwaveTimer == 1 {
			ShockwaveEnabled = false;
		}
	}