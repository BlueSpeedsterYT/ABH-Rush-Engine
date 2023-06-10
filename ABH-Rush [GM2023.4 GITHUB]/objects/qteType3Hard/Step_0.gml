/// @description Set Up QTE Type Code

	sprite_index = get_button_sprites();

	key_A = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0,gp_face3);
	key_S = keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0,gp_face1);
	key_D = keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0,gp_face2);
	key_W = keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0,gp_face4);
			
	QTETime -= 1.5;
			
	if !QTEDone && QTEAlpha < 1
		QTEAlpha += 0.125

	if QTETime > 0
	{
		if ButtonID == 0
		{
			if key_A
			{    
			    QTEDone = true;
			    QTETime = 0;
			}
			else if key_S || key_D || key_W
			{
			    QTETime = 0;
			}
		}
		else if ButtonID == 1
		{
			if key_S
			{    
			    QTEDone = true;
			    QTETime = 0;
			}
			else if key_A || key_D || key_W
			{
			    QTETime = 0;
			}
		}
		else if ButtonID == 2
		{
			if key_D
			{    
			    QTEDone = true;
			    QTETime = 0;
			}
			else if key_A || key_S || key_W
			{
			    QTETime = 0;
			}
		}
		else if ButtonID == 3
		{
			if key_W
			{    
			    QTEDone = true;
			    QTETime = 0;
			}
			else if key_A || key_S || key_D
			{
			    QTETime = 0;
			}
		}
	}
	else
	{
		if QTEDone
		{
			QTEAlpha -= 0.25;
			InputXScale += 0.125;
			InputYScale += 0.125;
		}
		else
		{
			instance_destroy();
		}
	}

	if QTEDone && QTEAlpha == 0
		instance_destroy();
