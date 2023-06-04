/// @description Draw HUD
	
	#macro TimeText $"{StringNumberZero(floor(StageTimer/60000) mod 100, 2)}:{StringNumberZero(floor(StageTimer/1000) mod 60, 2)}.{StringNumberZero(floor(StageTimer/10) mod 100, 2)}"
	#macro CountdownTimeText $"{StringNumberZero(floor(CountdownTimer/60000) mod 100, 2)}:{StringNumberZero(floor(CountdownTimer/1000) mod 60, 2)}.{StringNumberZero(floor(CountdownTimer/10) mod 100, 2)}"
	#macro StageTime (!isCountDown ? TimeText : CountdownTimeText)

	switch(StageHUDType)
	{
		case HUDType.Proto: // Prototype HUD
		{
			//if(HUDShow){
				draw_set_valign(fa_top);
				draw_set_color(c_white);
				draw_set_alpha(HUDAlpha);
				draw_text(CameraViewX+16, CameraViewY+16, $"RINGS: {StringNumberZero(StageRings, 3)}");
				draw_text(CameraViewX+CameraViewWidth-16-string_width($"LIVES: {StringNumberZero(StageLives, 2)}"), CameraViewY+16, $"LIVES: {StringNumberZero(StageLives, 2)}");
				var i = 0;
				repeat(2)
				{
					draw_line_width_color(CameraViewX+16, CameraViewY+CameraViewHeight-33-i, CameraViewX+123, CameraViewY+CameraViewHeight-33-i, 1, c_dkgray, c_dkgray);
					draw_line_width_color(CameraViewX+16, CameraViewY+CameraViewHeight-33-i, CameraViewX+16+(1.07*Player.boostAmount), CameraViewY+CameraViewHeight-33-i, 1, c_white, c_white);
					i += 1;
				}
				draw_text(CameraViewX+16, CameraViewY+CameraViewHeight-32, $"BOOST: {Player.boostAmount}%");
				draw_text(CameraViewX+CameraViewWidth/2-(string_width(StageTime)/2), CameraViewY+16, $"{StageTime}");
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
				draw_text(CameraViewX+xHUD+55, CameraViewY+22, StageTime);
				draw_sprite(sprRingAmountLegacy, 0, CameraViewX+xHUD+26, CameraViewY+45);
				draw_text(CameraViewX+xHUD+55, CameraViewY+47, $"{StringNumberZero(StageRings, 3)}");
				draw_set_font(-1);
				var i = 0;
				repeat(4)
				{
					draw_line_width_color(CameraViewX+28, CameraViewY+yHUD2+CameraViewHeight-20-i, CameraViewX+28+140, CameraViewY+yHUD2+CameraViewHeight-20-i, 1, c_dkgray, c_dkgray);
					draw_line_width_color(CameraViewX+28, CameraViewY+yHUD2+CameraViewHeight-20-i, CameraViewX+28+(1.4*Player.boostAmount), CameraViewY+yHUD2+CameraViewHeight-20-i, 1, c_lime, c_lime);
					i += 1;
				}
				draw_sprite(sprBoostGaugeLegacy, 0, CameraViewX+29, CameraViewY+yHUD2+CameraViewHeight-33);
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
			draw_text(CameraViewX+CameraViewWidth-16-string_width($"LIVES: {StringNumberZero(StageLives, 2)}"), CameraViewY+16, $"LIVES: {StringNumberZero(StageLives, 2)}");
			var i = 0;
			repeat(2)
			{
				draw_line_width_color(CameraViewX+16, CameraViewY+CameraViewHeight-33-i, CameraViewX+123, CameraViewY+CameraViewHeight-33-i, 1, c_dkgray, c_dkgray);
				draw_line_width_color(CameraViewX+16, CameraViewY+CameraViewHeight-33-i, CameraViewX+16+(1.07*Player.boostAmount), CameraViewY+CameraViewHeight-33-i, 1, c_white, c_white);
				i += 1;
			}
			draw_text(CameraViewX+16, CameraViewY+CameraViewHeight-32, $"BOOST: {Player.boostAmount}%");
			draw_text(CameraViewX+CameraViewWidth/2-(string_width(StageTime)/2), CameraViewY+16, StageTime);
			draw_set_color(c_black);
		}
		break;
	}