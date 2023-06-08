/// @description Draw the Player

	// Set up Tails' two tails:
	// [NOTE] UNCOMMENT THE CODE ONCE YOU ADDED IN TAILS TO YOUR GAME
	//if character == PlayerTails && animSprite == sprTailsJump
	//	draw_sprite_ext(sprTailsTail,animIndex,x,y,1,animDir,tail_direction,c_white,1);
	
	// Fix up the sprite drawing on the ground:
	var _wall = 0 
	var _bbox_top = 0
	if place_meeting(x,y,parWalls)
	{
	    _wall = instance_place(x+asin*mask,y+acos*mask,parWalls)
	    _bbox_top = sprite_get_bbox_top(_wall) - sprite_get_yoffset(_wall)
	}
	else if place_meeting(x,y,parBGWalls) || characterLayer == 0
	{
	    _wall = instance_place(x+asin*mask,y+acos*mask,parBGWalls)
	    _bbox_top = sprite_get_bbox_top(_wall) - sprite_get_yoffset(_wall)
	}
	else if place_meeting(x,y,parFGWalls) || characterLayer == 1
	{
	    _wall = instance_place(x+asin*mask,y+acos*mask,parFGWalls)
	    _bbox_top = sprite_get_bbox_top(_wall) - sprite_get_yoffset(_wall)
	}


	if collision_point(x+(mask - 1.5)*asin,y+(mask - 1.5)*acos,parWalls,true,true)
	    _bbox_top += 1

	animYPosDraw = _bbox_top
	
	// Draw the character:
	if acos == 1 && ground
	{
	    draw_sprite_ext(animSprite,animIndex,x,y - animYPosDraw,animDir,1,animAngle,c_white,animAlpha);
	}
	else if acos == -1 && ground
	    draw_sprite_ext(animSprite,animIndex,x,y+2,animDir,1,animAngle,c_white,animAlpha);
	else
	    draw_sprite_ext(animSprite,animIndex,x,y,animDir,1,animAngle,c_white,animAlpha);
		
	// Draw the Spindash Dust.
	if(actionCurrent == PlayerActionSpinCharge)
		draw_sprite_ext(sprSpindashDust, dustIndex, x, y - animYPosDraw, animDir, 1, animAngle, c_white, animAlpha)
    
	// Draw Tails' Flight Timer:
	// [NOTE] UNCOMMENT THE CODE ONCE YOU ADDED IN TAILS TO YOUR GAME
	//if character == PlayerTails && actionCurrent == PlayerActionHomingTarget
	//{
	//    draw_circular_bar(x + animDir*18, y - 15, 100, 100, c_black, 5, 1, 3)
	//    draw_circular_bar(x + animDir*18, y - 15, newAlarm[8]/480 * 100, 100, c_lime, 5, 1, 3)
	//}