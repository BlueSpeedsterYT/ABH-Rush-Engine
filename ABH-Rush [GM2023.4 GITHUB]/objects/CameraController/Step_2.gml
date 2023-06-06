/// @description Handle Camera Code

	x = clamp(x, LimitLeft, LimitRight);
	y = clamp(y, LimitTop, LimitBottom);
	camera_set_view_size(CameraViewID, Display.GameWidth, Display.GameHeight);
	camera_set_view_border(CameraViewID, Display.GameWidth/2, Display.GameHeight/2);

	switch(CamType)
	{
		case CameraType.Mirai:
		{
			if CamFollow == true {
				if ObjectID != noone {
					CameraX = lerp(CameraX, ObjectID.x, 0.2);
					CameraY = lerp(CameraY, ObjectID.y, 0.2);
					//x = lerp(x, floor((CameraX+CameraOffsetX))+((ShockwaveEnabled*choose(random(ShockwaveEffect), -random(ShockwaveEffect)))*2.5), 0.2);
					//y = lerp(y, floor((CameraY+CameraOffsetY))+((ShockwaveEnabled*choose(random(ShockwaveEffect), -random(ShockwaveEffect)))*2.5), 0.2);
					x = floor((CameraX+CameraOffsetX)+(ShockwaveEnabled*choose(random(ShockwaveEffect), -random(ShockwaveEffect))));
					y = floor((CameraY+CameraOffsetY)+(ShockwaveEnabled*choose(random(ShockwaveEffect), -random(ShockwaveEffect))));
				}
		
				if ObjectID == Player {
					CameraX = clamp(CameraX, LimitLeft, LimitRight);
					CameraY = clamp(CameraY, LimitTop, LimitBottom);
			
					if ObjectID.actionCurrent == PlayerActionLookUp && ObjectID.lookTimer >= 120 {
						if CameraOffsetY > -CameraViewHeight/2 {
							CameraOffsetY = lerp(CameraOffsetY, -CameraViewHeight/2, 0.2);
						}
					}
					else if ObjectID.actionCurrent == PlayerActionLookDown && ObjectID.lookTimer >= 120 {
						if CameraOffsetY < CameraViewHeight/2 {
							CameraOffsetY = lerp(CameraOffsetY, CameraViewHeight/2, 0.2);
						}
					}
					else{
						if CameraOffsetY > 0 {
							CameraOffsetY = lerp(CameraOffsetY, 0, 0.2);
						}
						else if CameraOffsetY < 0 {
							CameraOffsetY = lerp(CameraOffsetY, 0, 0.2);
						}
					}
			
					//if abs(ObjectID.speedX) >= 6
				        //CameraOffsetX = lerp(CameraOffsetX, (abs(ObjectID.speedX)*ObjectID.acos)*ObjectID.animDir, 0.2);
				    //else
				    //{   
				        //CameraOffsetX = lerp(CameraOffsetX, 0, 0.2);
				    //}
				}
			}
			else if Stage.StageClear {
				if instance_exists(Goal) {
					ObjectID = Goal;
					LimitLeft = ObjectID.x-CameraViewWidth/2;
					LimitRight = ObjectID.x+CameraViewWidth/2;
					LimitTop = ObjectID.y-CameraViewHeight/2;
					LimitBottom = ObjectID.y+CameraViewHeight/2;
				}
			}
		}
		break;
		
		case CameraType.Legacy:
		{
			if(CamFollow){
				if(ObjectID == Player){
					if !(ObjectID.actionCurrent == PlayerActionQTEInit && abs(ObjectID.speedX) <= 0.625 && ObjectID.speedY <= 0.3125){
						if (ObjectID.actionCurrent != PlayerActionZipStart && ObjectID.actionCurrent != PlayerActionZipTravel)
					    {
					        x = clamp(ObjectID.x + ObjectID.speedX*12*ObjectID.acos, LimitLeft, LimitRight);
					        y = clamp(ObjectID.y + ObjectID.speedY*2, LimitTop, LimitBottom);
        
					        CameraX += (x - CameraX) * 0.2 + ShockwaveEnabled*choose(random(ShockwaveEffect),-random(ShockwaveEffect));
            
					        if !ObjectID.ground 
					            CameraY += (y - CameraY) * 0.9 + ShockwaveEnabled*choose(random(ShockwaveEffect),-random(ShockwaveEffect));
					        else
					            CameraY = ObjectID.y + ShockwaveEnabled*choose(random(ShockwaveEffect),-random(ShockwaveEffect));
					    }
						else
				        {
				            x = clamp(ObjectID.x + ObjectID.hspeed*12 , LimitLeft, LimitRight);
				            y = clamp(ObjectID.y, LimitTop, LimitBottom);
    
				            CameraX += (x - CameraX) * 0.2;
				            CameraY = ObjectID.y;
				        }       
					}
					else
				    {
				        x = clamp(ObjectID.x, LimitLeft, LimitRight);
				        y = clamp(ObjectID.y, LimitTop, LimitBottom);
    
				        CameraX = ObjectID.x;
				        CameraY = ObjectID.y;
				    }
			
					if abs(ObjectID.speedX) > 0 && (ObjectID.keyLeft || ObjectID.keyRight)
				        CameraOffsetX += abs(ObjectID.speedX)*ObjectID.acos*ObjectID.animDir
				    else
				    {   
				        if CameraOffsetX > 0
				            CameraOffsetX -= 2
				        else if CameraOffsetX < 0
				            CameraOffsetX += 2
				        else
				            CameraOffsetX = 0
				    }
				    if CameraOffsetX > CameraViewWidth/4
				        CameraOffsetX = CameraViewWidth/4
				    if CameraOffsetX < -CameraViewWidth/4
				        CameraOffsetX = -CameraViewWidth/4    
				}
		
				if(ObjectID == Goal){
					LimitLeft = ObjectID.x-CameraViewWidth/2;
					LimitRight = ObjectID.x+CameraViewWidth/2;
					LimitTop = ObjectID.y-CameraViewHeight/2;
					LimitBottom = ObjectID.y+CameraViewHeight/2;
				}
			}
			else if(Stage.StageClear){
				if(instance_exists(Goal))
					ObjectID = Goal;
			}
		}
		break;
	}
	camera_set_view_pos(CameraViewID, x, y);