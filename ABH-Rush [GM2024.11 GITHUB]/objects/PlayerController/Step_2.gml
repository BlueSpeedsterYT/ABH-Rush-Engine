/// @description Set Up Misc. Player Stuff

	#region Player Bounds
	if (x < PlayerCam.LimitLeft + mask) {
	    speedX = 0;
	    x = PlayerCam.LimitLeft + mask;
	}

	if (x > PlayerCam.LimitRight - mask) {
	    speedX = 0;
	    x = PlayerCam.LimitRight - mask;
	}
	#endregion

	#region Character Animations
	switch(character)
	{
	    case PlayerSonic:
	    {
	        DrawSonic();
	    }
	    break;
	}

	boost_direction = point_direction(x_begin,y_begin,x,y);
	#endregion
	
	#region Camera System
	if(PlayerCam.CamTarget == id) 
	{
	    var _targetSpeed;
	    _targetSpeed = ((x - xprevious) * 12);
	    if (actionCurrent != PlayerActionCannon)
	        PlayerCam.CamShiftX = approach(PlayerCam.CamShiftX, round(_targetSpeed/2)*2, 7);

	    switch(actionCurrent) 
		{
	        case PlayerActionLookUp:
			{
	            if(lookTimer >= 120)
				{
					PlayerCam.CamShiftY = approach(PlayerCam.CamShiftY, -90, 3);
				}
			}
	        break;

	        case PlayerActionLookDown:
			{
	            if(lookTimer >= 120)
				{
					PlayerCam.CamShiftY = approach(PlayerCam.CamShiftY, 90, 3);
				}
			}
	        break;

	        case PlayerActionCannon:
	            if (keyLeft) {
	                PlayerCam.CamShiftX = approach(PlayerCam.CamShiftX, -80, 10);
	            }
	            else if (keyRight) {
	                PlayerCam.CamShiftX = approach(PlayerCam.CamShiftX, 80, 10);
	            }
	            else {
	                PlayerCam.CamShiftX = approach(PlayerCam.CamShiftX, 0, 10);
	            }

	            if (keyUp) {
	                PlayerCam.CamShiftY = approach(PlayerCam.CamShiftY, -80, 10);
	            }
	            else if (keyDown) {
	                PlayerCam.CamShiftY = approach(PlayerCam.CamShiftY, 80, 10);
	            }
	            else {
	                PlayerCam.CamShiftY = approach(PlayerCam.CamShiftY, 0, 10);
	            }
	            break;

	        case PlayerActionStomp:
	        case PlayerActionStompShadow:
	            PlayerCam.CamShiftY = approach(PlayerCam.CamShiftY, 210, 3);
	            break;

	        default:
	            if (PlayerCam.CamShiftY == 0) {
	                _targetSpeed = (y - yprevious) * 5
	                PlayerCam.CamShiftY = approach(PlayerCam.CamShiftY, round(_targetSpeed/2)*2, 6);
	            }
			break;
	    }
	}
	#endregion

