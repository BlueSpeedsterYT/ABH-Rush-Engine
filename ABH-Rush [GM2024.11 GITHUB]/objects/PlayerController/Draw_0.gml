/// @description Draw the Player

	// Set up Tails' two tails:
	// [NOTE] UNCOMMENT THE CODE ONCE YOU ADDED IN TAILS TO YOUR GAME
	//if character == PlayerTails && sprite_index == sprTailsJump
	//	draw_sprite_ext(sprTailsTail,image_index,x,y,1,animDir,tail_direction,c_white,1);
	
	// Draw the character:
	draw_sprite_ext(sprite_index, image_index, x, y, animDir, image_yscale, image_angle, c_white, image_alpha);
		
	// Draw the Spindash Dust.
	if(actionCurrent == PlayerActionSpinCharge)
	{
		draw_sprite_ext(sprSpindashDust, dustIndex, x, y - animYPosDraw, animDir, 1, image_angle, c_white, image_alpha)
	}
    
	// Draw Tails' Flight Timer:
	// [NOTE] UNCOMMENT THE CODE ONCE YOU ADDED IN TAILS TO YOUR GAME
	//if(character == PlayerTails && actionCurrent == PlayerActionHomingTarget)
	//{
	//    draw_circular_bar(x + animDir*18, y - 15, 100, 100, c_black, 5, 1, 3)
	//    draw_circular_bar(x + animDir*18, y - 15, newAlarm[8]/480 * 100, 100, c_lime, 5, 1, 3)
	//}