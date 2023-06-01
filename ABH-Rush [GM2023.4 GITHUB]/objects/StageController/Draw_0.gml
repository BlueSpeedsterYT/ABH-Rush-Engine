/// @description Draw HUD

	draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_text(CameraViewX+16, CameraViewY+16, $"RINGS: {StageRings}");
	draw_text(CameraViewX+16, CameraViewY+32, $"BOOST: {Player.boostAmount}");
	draw_set_color(c_black);