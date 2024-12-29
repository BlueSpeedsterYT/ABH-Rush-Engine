function EffectDraw(sprite, angle, scale_x, scale_y, enable_blend){

	var fx = instance_create_depth(x,y,depth,fxSpecial)
	with(fx)
	{
	    sprite_index = sprite;
	    image_angle = angle;
	    image_xscale = scale_x;
	    image_yscale = scale_y;
	    blend = enable_blend;
	}

}