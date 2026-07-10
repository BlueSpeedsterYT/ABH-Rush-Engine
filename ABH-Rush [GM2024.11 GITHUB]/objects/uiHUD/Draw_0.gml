/// @description Draw HUD

	switch(HUDType)
	{	
		case StyleEnum.Legacy:
		case StyleEnum.Mirai:
		{
			xHUD = lerp(xHUD, HUDShow ? 0 : -CameraViewWidth/2, 0.2);
			xHUD2 = lerp(xHUD2, HUDShow ? 0 : CameraViewWidth/2, 0.2);
			yHUD = lerp(yHUD, HUDShow ? 0 : -CameraViewHeight/2, 0.2);
			yHUD2 = lerp(yHUD2, HUDShow ? 0 : CameraViewHeight/2, 0.2);
		}
		break;
			
		case StyleEnum.Proto:
		{
			HUDAlpha = lerp(HUDAlpha, HUDShow ? 1 : 0, 0.2);
		}
		break;
	}

	//Set up timer stuff
	var MiliSec, Sec, Minute;
	Minute = floor(GameData.StageTimer/60000) mod 100;
	Sec = floor(GameData.StageTimer/1000) mod 60;
	MiliSec = floor(GameData.StageTimer/10) mod 100
	
	#macro StageTime (Minute > 9 ? "" : "0") + string(Minute) + ":" + (Sec > 9 ? "" : "0") + string(Sec) + "." + (MiliSec > 9 ? "" : "0") + string(MiliSec)

	switch(HUDType)
	{
		case StyleEnum.Proto: // Prototype HUD
		{
			draw_set_valign(fa_top);
			draw_set_color(c_white);
			draw_set_alpha(HUDAlpha);
			draw_text(CameraViewX+16, CameraViewY+16, $"RINGS: {StringNumberZero(GameData.StageRings, 3)}");
			draw_text(CameraViewX+CameraViewWidth-16-string_width($"LIVES: {StringNumberZero(GameData.StageLives, 2)}"), CameraViewY+16, $"LIVES: {StringNumberZero(GameData.StageLives, 2)}");
			for(var i = 0; i < 2; i++;)
			{
				draw_line_width_color(CameraViewX+16, CameraViewY+CameraViewHeight-33-i, CameraViewX+123, CameraViewY+CameraViewHeight-33-i, 1, c_dkgray, c_dkgray);
				draw_line_width_color(CameraViewX+16, CameraViewY+CameraViewHeight-33-i, CameraViewX+16+(1.07*Player.boostAmount), CameraViewY+CameraViewHeight-33-i, 1, c_white, c_white);
			}
			draw_text(CameraViewX+16, CameraViewY+CameraViewHeight-32, $"BOOST: {Player.boostAmount}%");
			draw_text(CameraViewX+CameraViewWidth/2-(string_width(StageTime)/2), CameraViewY+16, $"{StageTime}");
			draw_set_color(c_black);
			draw_set_alpha(1);
		}
		break;
		
		case StyleEnum.Legacy: // Edited Classic HUD from ABH-Rush V1.0-1.5T
		{
			draw_set_color(c_white);
			var _LegacyFont = font_add_sprite_ext(sprHUDNumbersLegacy, "0123456789:.", false, 0);
			draw_set_font(_LegacyFont);
			draw_set_alpha(HUDAlpha);
			
			draw_sprite(sprLivesAmountLegacy, 0, CameraViewX+xHUD2+CameraViewWidth-string_width(StringNumberZero(GameData.StageLives, 2))-56, CameraViewY+20);
			draw_text(CameraViewX+xHUD2+CameraViewWidth-25-string_width(StringNumberZero(GameData.StageLives, 2)), CameraViewY+22, $"{StringNumberZero(GameData.StageLives, 2)}");
			draw_sprite(sprTimeAmountLegacy, 0, CameraViewX+xHUD+26, CameraViewY+20);
			draw_text(CameraViewX+xHUD+55, CameraViewY+22, StageTime);
			draw_sprite(sprRingAmountLegacy, 0, CameraViewX+xHUD+26, CameraViewY+45);
			draw_text(CameraViewX+xHUD+55, CameraViewY+47, $"{StringNumberZero(GameData.StageRings, 3)}");
			draw_set_font(-1);
			for(var i = 0; i < 4; i++;)
			{
				draw_line_width_color(CameraViewX+28, CameraViewY+yHUD2+CameraViewHeight-20-i, CameraViewX+28+140, CameraViewY+yHUD2+CameraViewHeight-20-i, 1, c_dkgray, c_dkgray);
				draw_line_width_color(CameraViewX+28, CameraViewY+yHUD2+CameraViewHeight-20-i, CameraViewX+28+(1.4*Player.boostAmount), CameraViewY+yHUD2+CameraViewHeight-20-i, 1, c_lime, c_lime);
			}
			draw_sprite(sprBoostGaugeLegacy, 0, CameraViewX+29, CameraViewY+yHUD2+CameraViewHeight-33);
				
			draw_set_color(c_black);
			draw_set_alpha(1);
		}
		break;
		
		case StyleEnum.Mirai: // New HUD
		{
			draw_set_color(c_white);
			var _MiraiFont = font_add_sprite_ext(sprHUDNumbers, "0123456789:.", false, 0);
			draw_set_font(_MiraiFont);
			
			draw_sprite(sprLivesAmount, 0, CameraViewX+xHUD2+GameData.GameWidth-75, CameraViewY+GameData.GameHeight-47);
			draw_set_halign(fa_left);
			draw_text(CameraViewX+xHUD2+GameData.GameWidth-70, CameraViewY+GameData.GameHeight-35, StringNumberZero(GameData.StageLives, 2));
			draw_sprite(sprTimeAmount, 0, CameraViewX+GameData.GameWidth/2, CameraViewY+yHUD+5);
			draw_set_halign(fa_center);
			draw_text(CameraViewX+GameData.GameWidth/2, CameraViewY+yHUD+17, StageTime);
			draw_set_halign(fa_left);
			draw_sprite(sprRingAmount, 0, CameraViewX+xHUD+43, CameraViewY+GameData.GameHeight-58);
			draw_text(CameraViewX+xHUD+72, CameraViewY+GameData.GameHeight-50, StringNumberZero(GameData.StageRings, 3));
			draw_set_font(-1);
			var _boostColor1, _boostColor2;
			_boostColor1 = make_color_rgb(245, 205, 23);
			_boostColor2 = make_color_rgb(245, 130, 23);
			draw_sprite(sprBoostGauge, 0, CameraViewX+xHUD+15, CameraViewY+GameData.GameHeight-49);
			draw_line_width_color(CameraViewX+xHUD+53, CameraViewY+GameData.GameHeight-31, CameraViewX+xHUD+53+(1.39*Player.boostAmount), CameraViewY+GameData.GameHeight-31, 1, _boostColor1, _boostColor1);
			draw_line_width_color(CameraViewX+xHUD+53, CameraViewY+GameData.GameHeight-30, CameraViewX+xHUD+53+(1.39*Player.boostAmount), CameraViewY+GameData.GameHeight-30, 1, _boostColor2, _boostColor2);
			draw_buttons(CameraViewX+xHUD+34, CameraViewY+GameData.GameHeight-30, 0);
				
			draw_set_color(c_black);
			draw_set_alpha(1);
		}
		break;
	}