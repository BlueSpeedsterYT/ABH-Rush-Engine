/// @description Camera Update!

	#region Shake
	// Horizontal Shake
	if (CamShakeX > 0) {
	    x += random_range(-17, 17);
	    CamShakeX -= 1;
	}

	// Vertical Shake
	if (CamShakeY > 0) {
	    CamShiftY = approach(CamShiftY, CamShakeYOffset - round(CamShakeY/2)*2, 10)
	    y = SmoothStep(y, floor(y + CamShiftY), 0.3);

	    if (CamShakeY mod 6 == 4) {
	        CamShakeYOffset = -CamShakeYOffset;
	    }
	    CamShakeY -= 1;
	}


	if (sign(CamShakeYOffset) == -1) {
	    if (CamShakeY == 0) {
	        CamShakeYOffset = -CamShakeYOffset;
	    }
	}
	#endregion
	
	#region Shift to the target position
	if (CamDelay > 0) {
	    CamDelay -= 1;
	}

	if (CamDelay == 0 && CamTarget != noone) {
	    x = floor(SmoothStep(x, CamTarget.x + CamShiftX, CamInterpolationSpeedX));
	    y = floor(SmoothStep(y, CamTarget.y + CamShiftY, CamInterpolationSpeedY));
	}

	x = clamp(x, LimitLeft + CamCenterX, LimitRight - CamCenterX);
	y = clamp(y, LimitTop + CamCenterY, LimitBottom - CamCenterY);
	#endregion
	
	#region Zoom
	if(CamZoom != CamZoomTarget)
	{
		CamZoom = SmoothStep(CamZoom, CamZoomTarget, 0.2);
		camera_set_view_zoom(CameraViewID, GameData.GameWidth, GameData.GameHeight, CamZoom);
	}
	#endregion
