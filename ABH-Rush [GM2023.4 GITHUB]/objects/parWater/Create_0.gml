/// @description Set Water Depth

	depth = -11;
	WaterSurface = instance_create_depth(x, y-10, -12, parWaterSurface);
	
	WaterSurface.image_xscale = (sprite_width/64)