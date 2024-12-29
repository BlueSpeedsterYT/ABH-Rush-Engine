/// @description Draw Title Card
	
	draw_sprite_ext(sprFadeGray, 0, CameraViewX, CameraViewY, CameraViewWidth, CameraViewHeight, 0, c_white, titleAlpha[0]);

	draw_set_color(c_white);

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text(CameraViewX+titleX, CameraViewY+titleY, Stage.StageTitle);
	draw_text(CameraViewX+actX, CameraViewY+actY, $"ACT {Stage.StageAct}");
	
	draw_set_alpha(titleAlpha[3]);
	draw_text(CameraViewX+CameraViewWidth/2, CameraViewY+CameraViewHeight-16, Stage.StageMissionName);
	draw_set_alpha(1);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_text_ext(CameraViewX+16, CameraViewY+musicY, $"{Stage.TitleBGM} ~ {Stage.SourceBGM}", 16, CameraViewWidth-32);
	
	draw_set_halign(-1);
	draw_set_valign(-1);
	
	draw_sprite_ext(sprFadeBlack, 0, CameraViewX, CameraViewY, CameraViewWidth, CameraViewHeight, 0, c_white, titleAlpha[1]);
	draw_sprite_ext(sprFadeWhite, 0, CameraViewX, CameraViewY, CameraViewWidth, CameraViewHeight, 0, c_white, titleAlpha[2]);