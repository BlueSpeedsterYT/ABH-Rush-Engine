/// @description Set Up QTE Type Code

	sprite_index = get_button_sprites();

	key_A = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0,gp_face3);
	key_S = keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0,gp_face1);
	key_D = keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0,gp_face2);
	key_W = keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0,gp_face4);
			
	if(QTETime > 0)
		QTETime -= 1;
			
	if !QTEDone && QTEAlpha < 1
		QTEAlpha += 0.125

	if QTETime <= QTELimitStart[0] && QTETime >= QTELimitEnd[0] && QTETime != 0
	{
		if ButtonID == 0
		{
			if key_A
			{    
			    QTEDone = true;
			}
		}
		else if ButtonID == 1
		{
			if key_S
			{    
			    QTEDone = true;
			}
		}
		else if ButtonID == 2
		{
			if key_D
			{    
			    QTEDone = true;
			}
		}
		else if ButtonID == 3
		{
			if key_W
			{    
			    QTEDone = true;
			}
		}
		
		if QTEDone
		{
			TimeValue = QTETime;
			QTETime = 0;
		}
	}
	else if (QTETime > QTELimitStart[0] || QTETime < QTELimitEnd[0]) && QTETime != 0
	{
		if ButtonID == 0
		{
			if key_A
			{    
			    QTETime = 0;
			}
		}
		else if ButtonID == 1
		{
			if key_S
			{    
			    QTETime = 0;
			}
		}
		else if ButtonID == 2
		{
			if key_D
			{    
			    QTETime = 0;
			}
		}
		else if ButtonID == 3
		{
			if key_W
			{    
			    QTETime = 0;
			}
		}
	}
	else
	{
		instance_destroy();
	}