/// @description Start up the pre-draw

	//Animation Angles.
	if(speedX == 0 && (actionCurrent <= PlayerActionNormal) && ground)
	{
		image_angle = 0;
	}
	else if(image_angle != 0 && actionCurrent == PlayerActionNormal && !ground)
	{
	    if image_angle mod 360 < 180   
	        image_angle -= 7;
	    else if image_angle mod 360 > 180
	        image_angle += 7;
	    else if image_angle == 180
	    {
	        if animDir == 1
	            image_angle += 10;
	        else
	            image_angle -= 10;
	    }
	    if image_angle mod 360 < 10
	        image_angle = 0;
	}
	else if(ground && collision_line(x,y,x,y+20,parWaterSurface,true,true)) //if running on water then angle is 0
	{
	    image_angle = 0;
	}
	else
	{
	    image_angle = angle;
	}
	
	//Special Player Animation Effects.
	//Damaged:
	if(damageEffect > 0 && damageEffect mod 2 == 0 && actionCurrent != PlayerActionDamage)
	{
	    image_alpha = !image_alpha;
	}
	else
	{
	    image_alpha = 1;
	}
	
	//Jump Panels:
	if(actionCurrent == PlayerActionPanelLand)
	{
		var _jump_panel = instance_nearest(x,y,parJumpPanel)
		image_angle = _jump_panel.image_angle;
	}
	
	//Animation Set up.
	if(image_index >= 999)
	{
	    image_index = 0;
	}

	if(animFrame >= 1)
	{
	    animFrame = 0;
	    image_index++;
	}
