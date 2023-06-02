/// @description Handle Camera Code

	x = clamp(x, LimitLeft, LimitRight);
	y = clamp(y, LimitTop, LimitBottom);
	camera_set_view_size(CameraViewID, GlobalGameWidth, GlobalGameHeight);
	camera_set_view_border(CameraViewID, GlobalGameWidth/2, GlobalGameHeight/2);

	if CamFollow == true {
		if ObjectID != noone {
			CameraX = clamp(ObjectID.x, LimitLeft, LimitRight);
			CameraY = clamp(ObjectID.y, LimitTop, LimitBottom);
			x = lerp(x, floor(CameraX+CameraShiftX), 0.1);
			y = lerp(y, floor(CameraY+CameraShiftY), 0.1);
		}
		
		if ObjectID == Player {
			if Player.actionCurrent == PlayerActionLookUp && Player.lookTimer >= 120 {
				if CameraShiftY > -CameraViewHeight/2 {
					CameraShiftY = lerp(CameraShiftY, -CameraViewHeight/2, 0.2);
				}
			}
			else if Player.actionCurrent == PlayerActionLookDown && Player.lookTimer >= 120 {
				if CameraShiftY < CameraViewHeight/2 {
					CameraShiftY = lerp(CameraShiftY, CameraViewHeight/2, 0.2);
				}
			}
			else{
				if CameraShiftY > 0 {
					CameraShiftY = lerp(CameraShiftY, 0, 0.2);
				}
				else if CameraShiftY < 0 {
					CameraShiftY = lerp(CameraShiftY, 0, 0.2);
				}
			}
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
	
	camera_set_view_pos(CameraViewID, x, y);