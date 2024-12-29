/// @description Draw Ramp Types

	switch(rampType){
		case "Normal":
		{
			draw_sprite_ext(sprJumpRamp, image_index, x, y, image_xscale, 1, 0, c_white, 1);
		}
		break;
		
		case "QTE Type 1":
		{
			draw_sprite_ext(sprJumpRampQTE1, image_index, x, y, image_xscale, 1, 0, c_white, 1);
		}
		break;
		
		case "QTE Type 2":
		{
			draw_sprite_ext(sprJumpRampQTE2, image_index, x, y, image_xscale, 1, 0, c_white, 1);
		}
		break;
		
		case "QTE Type 3":
		case "QTE Type 3 (Hard)":
		case "QTE Type 3 (Expert)":
		{
			draw_sprite_ext(sprJumpRampQTE3, image_index, x, y, image_xscale, 1, 0, c_white, 1);
		}
		break;
		
	}