/// @description Init Dash Ring Code

	depth = 0;
	
	ringOuter = instance_create_depth(x, y, depth-10, objDashRingOuter);
	ringOuter.image_angle = image_angle;
	ringOuter.image_xscale = image_xscale;
	ringOuter.depth = -10;