/// @description Collide with Trigger Object

	switch(layerType)
	{
		case "Background":
		{
			Player.characterLayer = 0;
		}
		break;
				
		case "Foreground":
		{
			Player.characterLayer = 1;
		}
		break;
				
		case "From Background to Foreground":
		{
			var _groundedCheck, _groundedCheck2;
			_groundedCheck = groundedOnly ? (Player.speedX > 0 && Player.ground) : (Player.speedX > 0);
			_groundedCheck2 = groundedOnly ? (Player.speedX < 0 && Player.ground) : (Player.speedX < 0);
			if(_groundedCheck)
			{
				Player.characterLayer = 1;
			}
			else if(_groundedCheck2)
			{
				Player.characterLayer = 0;
			}
		}
		break;
				
		case "From Foreground to Background":
		{
			var _groundedCheck, _groundedCheck2;
			_groundedCheck = groundedOnly ? (Player.speedX > 0 && Player.ground) : (Player.speedX > 0);
			_groundedCheck2 = groundedOnly ? (Player.speedX < 0 && Player.ground) : (Player.speedX < 0);
			if(_groundedCheck)
			{
				Player.characterLayer = 0;
			}
			else if(_groundedCheck2)
			{
				Player.characterLayer = 1;
			}
		}
		break;
	}
