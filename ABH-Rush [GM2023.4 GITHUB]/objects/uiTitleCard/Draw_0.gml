/// @description Draw Title Card

	draw_sprite_ext(sprFadeGray, 0, CameraViewX, CameraViewY, CameraViewWidth, CameraViewHeight, 0, c_white, titleAlpha[0]);

	draw_set_color(c_white);

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text(CameraViewX+titleX, CameraViewY+titleY-(string_height(Stage.StageTitle)/2), Stage.StageTitle);
	draw_text(CameraViewX+actX, CameraViewY+actY+(string_height(Stage.StageTitle)/2), $"ACT {Stage.StageAct}");
	
	draw_set_alpha(titleAlpha[3]);
	draw_text(CameraViewX+CameraViewWidth/2, CameraViewY+CameraViewHeight-16, Stage.StageMission);
	draw_set_alpha(1);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_text(CameraViewX+16, CameraViewY+musicY, $"{Stage.TitleBGM} ~ {Stage.SourceBGM}");
	
	draw_set_halign(-1);
	draw_set_valign(-1);
	
	draw_sprite_ext(sprFadeBlack, 0, CameraViewX, CameraViewY, CameraViewWidth, CameraViewHeight, 0, c_white, titleAlpha[1]);
	draw_sprite_ext(sprFadeWhite, 0, CameraViewX, CameraViewY, CameraViewWidth, CameraViewHeight, 0, c_white, titleAlpha[2]);