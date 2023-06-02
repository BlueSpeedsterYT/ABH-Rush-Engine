/// @description Draw HUD

	switch(StageHUDType)
	{
		case HUDType.Proto: // Prototype HUD
		{
			//if(HUDShow){
				draw_set_valign(fa_top);
				draw_set_color(c_white);
				draw_set_alpha(HUDAlpha);
				draw_text(CameraViewX+16, CameraViewY+16, $"RINGS: {StringNumberZero(StageRings, 3)}");
				draw_line_width_color(CameraViewX+16, CameraViewY+CameraViewHeight-34, CameraViewX+123, CameraViewY+CameraViewHeight-34, 1, c_dkgray, c_dkgray);
				draw_line_width_color(CameraViewX+16, CameraViewY+CameraViewHeight-33, CameraViewX+123, CameraViewY+CameraViewHeight-33, 1, c_dkgray, c_dkgray);
				draw_line_width_color(CameraViewX+16, CameraViewY+CameraViewHeight-34, CameraViewX+16+(1.07*Player.boostAmount), CameraViewY+CameraViewHeight-34, 1, c_white, c_white);
				draw_line_width_color(CameraViewX+16, CameraViewY+CameraViewHeight-33, CameraViewX+16+(1.07*Player.boostAmount), CameraViewY+CameraViewHeight-33, 1, c_white, c_white);
				draw_text(CameraViewX+16, CameraViewY+CameraViewHeight-32, $"BOOST: {Player.boostAmount}%");
				draw_text(CameraViewX+CameraViewWidth/2-(string_width(TotalStageTimerText)/2), CameraViewY+16, $"{StringNumberZero(StageTimer[0], 2)}:{StringNumberZero(StageTimer[1], 2)}.{StringNumberZero(StageTimer[2], 2)}");
				draw_set_color(c_black);
				draw_set_alpha(1);
			//}
		}
		break;
		
		case HUDType.Legacy: // Edited Classic HUD from ABH-Rush V1.0-1.5T
		{
			draw_set_color(c_white);
			var _LegacyFont = font_add_sprite_ext(sprHUDNumbersLegacy, "0123456789:.", false, 0);
			draw_set_font(_LegacyFont);
			//draw_set_alpha(HUDAlpha);
			//if(HUDShow){
				draw_sprite(sprLivesAmountLegacy, 0, CameraViewX+xHUD2+CameraViewWidth-string_width(StringNumberZero(StageLives, 2))-56, CameraViewY+20);
				draw_text(CameraViewX+xHUD2+CameraViewWidth-25-string_width(StringNumberZero(StageLives, 2)), CameraViewY+22, $"{StringNumberZero(StageLives, 2)}");
				draw_sprite(sprTimeAmountLegacy, 0, CameraViewX+xHUD+26, CameraViewY+20);
				draw_text(CameraViewX+xHUD+55, CameraViewY+22, $"{StringNumberZero(StageTimer[0], 2)}:{StringNumberZero(StageTimer[1], 2)}.{StringNumberZero(StageTimer[2], 2)}");
				draw_sprite(sprRingAmountLegacy, 0, CameraViewX+xHUD+26, CameraViewY+45);
				draw_text(CameraViewX+xHUD+55, CameraViewY+47, $"{StringNumberZero(StageRings, 3)}");
				draw_set_font(-1);
				draw_sprite(sprBoostGaugeLegacy, 0, CameraViewX+29, CameraViewY+yHUD2+CameraViewHeight-33);
				var i = 0;
				repeat(4)
				{
					draw_line_width_color(CameraViewX+28, CameraViewY+yHUD2+CameraViewHeight-20-i, CameraViewX+28+140, CameraViewY+yHUD2+CameraViewHeight-20-i, 1, c_dkgray, c_dkgray);
					draw_line_width_color(CameraViewX+28, CameraViewY+yHUD2+CameraViewHeight-20-i, CameraViewX+28+(1.4*Player.boostAmount), CameraViewY+yHUD2+CameraViewHeight-20-i, 1, c_lime, c_lime);
					i += 1;
				}
			//}
			draw_set_color(c_black);
			//draw_set_alpha(1);
		}
		break;
		
		case HUDType.Mirai: // New HUD
		{
			draw_set_valign(fa_top);
			draw_set_color(c_white);
			draw_text(CameraViewX+16, CameraViewY+16, $"RINGS: {StringNumberZero(StageRings, 3)}");
			draw_line_width_color(CameraViewX+16, CameraViewY+CameraViewHeight-34, CameraViewX+123, CameraViewY+CameraViewHeight-34, 1, c_dkgray, c_dkgray);
			draw_line_width_color(CameraViewX+16, CameraViewY+CameraViewHeight-33, CameraViewX+123, CameraViewY+CameraViewHeight-33, 1, c_dkgray, c_dkgray);
			draw_line_width_color(CameraViewX+16, CameraViewY+CameraViewHeight-34, CameraViewX+16+(1.07*Player.boostAmount), CameraViewY+CameraViewHeight-34, 1, c_white, c_white);
			draw_line_width_color(CameraViewX+16, CameraViewY+CameraViewHeight-33, CameraViewX+16+(1.07*Player.boostAmount), CameraViewY+CameraViewHeight-33, 1, c_white, c_white);
			draw_text(CameraViewX+16, CameraViewY+CameraViewHeight-32, $"BOOST: {Player.boostAmount}%");
			draw_text(CameraViewX+CameraViewWidth/2-(string_width(TotalStageTimerText)/2), CameraViewY+16, $"{StringNumberZero(StageTimer[0], 2)}:{StringNumberZero(StageTimer[1], 2)}.{StringNumberZero(StageTimer[2], 2)}");
			draw_set_color(c_black);
		}
		break;
	}