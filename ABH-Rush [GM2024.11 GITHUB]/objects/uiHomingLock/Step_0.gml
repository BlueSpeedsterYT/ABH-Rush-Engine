/// @description Set up the lock

	if radius > 15
		radius -= 6
	else
	    draw = true;

	if Player.actionCurrent == PlayerActionPanelJump || Player.actionCurrent == PlayerActionPanelLand
	    instance_destroy()
    
	x = instance_nearest(x,y,parHomableThing).x
	y = instance_nearest(x,y,parHomableThing).y

	if Player.actionCurrent == PlayerActionCannon
	    instance_destroy()
