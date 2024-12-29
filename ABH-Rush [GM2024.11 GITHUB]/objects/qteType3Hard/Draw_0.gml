/// @description Draw QTE Type 1

	draw_buttons_ext(CameraViewX+ButtonX, CameraViewY+ButtonY, ButtonID, QTEAlpha, InputXScale, InputYScale);
	draw_circular_bar(CameraViewX+ButtonX, CameraViewY+ButtonY, QTETime, 100, make_color_rgb(100-QTETime, QTETime+155, 0), 25, 1, 5);