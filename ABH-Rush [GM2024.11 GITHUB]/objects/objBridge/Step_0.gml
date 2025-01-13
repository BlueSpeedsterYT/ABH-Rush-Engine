/// @description Bridge Collsion

	//Make a check if Player Controller exists
	if(instance_find(Player, 0) != noone)
	{
		//"This is where the fun begins"
		//Reset Height for Logs to 0.
		for (var i = 0; i < NumLogs; ++i;)
	    {
			Logs[i].Height = 0;
	    }
		
		//Set up needed Bridge collision vars
		var pos_x_1 = x;
		var pos_y_1 = y - 2;
		var pos_x_2 = x + BridgeWidth;
		var pos_y_2 = y + MaxTension;
		var _playerBridgeCollide = collision_rectangle(pos_x_1, pos_y_1, pos_x_2, pos_y_2, instance_find(Player, 0), true, true);
		
		//Make this work if the player has collided *and* is in ground mode
		if(_playerBridgeCollide && Player.ground)
		{
			//Tension Values
			var player_x_pos = Player.x - x;
			var value_a = max(0, floor(player_x_pos / sprite_get_width(BridgeSprite)))
			var value_b = NumLogs - 1;
			var tension_point = min(value_a, value_b);
			
			//Gradient Values
			var half_of_pi = pi * 0.5;
			var left_gradient = safe_division(half_of_pi, tension_point);
			var right_gradient = safe_division(half_of_pi, NumLogs-tension_point);
			
			//Angle Values
			var left_angle = 0;
			var right_angle = pi;
			
			//Determine Distance from the Center
			var divider = floor(player_x_pos - HalfWidth);
			var multipler = 1 - (abs(divider / HalfWidth));
			var distance_from_center = MaxTension * multipler;
			
			//Reposition the left Logs
			for(var i = 0; i < tension_point; ++i)
			{
				//Variables
				var actual_height = sin(left_angle) * distance_from_center;
				
				//Alter Height
				if(Logs[i].Height < actual_height)
				{
					Logs[i].Height = actual_height;
				}
				
				//Adjust Angle
				left_angle += left_gradient;
			}
			
			//Reposition the right Logs
			for(var i = NumLogs-1; i > tension_point; --i)
			{
				//Variables
				var actual_height = sin(right_angle) * distance_from_center;
				
				//Alter Height
				if(Logs[i].Height < actual_height)
				{
					Logs[i].Height = actual_height;
				}
				
				//Adjust Angle
				right_angle -= right_gradient;
			}
		}
		
		//Alter Log Height
		for(var i = 0; i < NumLogs; ++i)
		{
			//Variables
			var actual_height = Logs[i].LogObject.y;
			var new_height = y + Logs[i].Height;
			
			//Adjust the height
			Logs[i].LogObject.y = actual_height + (new_height - actual_height) * 0.2;
		}
	}
