/// @description Set up checks for the bubble

	if image_alpha < 1
	    image_alpha += 0.0625

	if !place_meeting(x,y,parWater)
	    instance_destroy()