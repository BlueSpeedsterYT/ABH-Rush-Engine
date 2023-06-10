/// @description The Actual Code

// ---- Variable declaration ---------------------------------------------------------------------------
    var PlayerCount, PlayerHandle, TensionPoint, DistanceFromCenter, LeftGradient, RightGradient, Left, Right;
    var CurrentHeight;

// ---- Routine ----------------------------------------------------------------------------------------

    // Set all logs heights to 0
    for (i=0; i<NumLogs; i+=1) Heights[i] = 0;
    
    // Find out the logs height depending on the player objects
    if (instance_exists(Player))
    {
        // Get number of player instances and run through them all
        PlayerCount = instance_number(Player);
        for (i=0; i<PlayerCount; i+=1)
        {
            // Grab object instance handle and check if it's on the bridge
            PlayerHandle = instance_find(Player, i);
            
            if (PlayerHandle == noone) continue;

            if (!collision_rectangle(x, y-2, x+BridgeWidth, y+MaxTension, PlayerHandle, true, true)
             || !PlayerHandle.ground) continue;
			 
			// Set the Player to not always be on an angle.
			//PlayerHandle.angle = 0;
            
            // Find tension point and calculate left and right and their gradients
            TensionPoint  = min(max(floor((PlayerHandle.x - x)/24),0),NumLogs-1);
            LeftGradient  = safe_division(pi*0.5, TensionPoint);
            RightGradient = safe_division(pi*0.5, NumLogs-TensionPoint);
            Left          = 0;
            Right         = pi;
            
            // Calculate distance from center
            DistanceFromCenter = MaxTension * (1-(abs(floor(PlayerHandle.x-x-HalfWidth)/HalfWidth)));
            
            // Reposition all bridge logs
            for (j=0; j<=TensionPoint; j+=1)
            {
                CurrentHeight = sin(Left)*DistanceFromCenter;
                if (Heights[j] < CurrentHeight) Heights[j] = CurrentHeight;
                
                Left           += LeftGradient;
            }
            for (j=NumLogs-1; j>TensionPoint; j-=1)
            {
                CurrentHeight = sin(Right)*DistanceFromCenter;
                if (Heights[j] < CurrentHeight) Heights[j] = CurrentHeight;

                Right          -= RightGradient;
            }
        }
    }

    // Now, change bridge's height
    for (i=0; i<NumLogs; i+=1) Logs[i].y = linear_interpolate(Logs[i].y, y+Heights[i], 0.2);