/// @description Draw Ramp Types

	switch(rampType){
		case 0:
		{
			draw_sprite_ext(sprJumpRamp, image_index, x, y, image_xscale, 1, 0, c_white, 1);
		}
		break;
		
		case 1:
		{
			draw_sprite_ext(sprJumpRampQTE1, image_index, x, y, image_xscale, 1, 0, c_white, 1);
		}
		break;
		
		case 2:
		{
			draw_sprite_ext(sprJumpRampQTE2, image_index, x, y, image_xscale, 1, 0, c_white, 1);
		}
		break;
		
		case 3:
		case 3.1:
		case 3.2:
		{
			draw_sprite_ext(sprJumpRampQTE3, image_index, x, y, image_xscale, 1, 0, c_white, 1);
		}
		break;
		
	}