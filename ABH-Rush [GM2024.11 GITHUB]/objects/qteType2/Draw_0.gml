/// @description Draw QTE Type 2

	draw_set_circle_precision(64)
	draw_set_colour(c_orange) 
	for(i = QTELimitEnd[0]; i <= QTELimitStart[0]; i += 0.1)
	    draw_circle(CameraViewX+ButtonX,CameraViewY+ButtonY,i,true)

	draw_set_colour(c_orange)
	for(i = QTELimitEnd[1]; i <= QTELimitStart[1]; i += 0.1)
	    draw_circle(CameraViewX+ButtonX,CameraViewY+ButtonY,i,true)

	draw_set_colour(c_lime)
	for(i = QTELimitEnd[2]; i <= QTELimitStart[2]; i += 0.1)
	    draw_circle(CameraViewX+ButtonX,CameraViewY+ButtonY,i,true)

	draw_buttons_ext(CameraViewX+ButtonX, CameraViewY+ButtonY, ButtonID, QTEAlpha, InputXScale, InputYScale);
    
	draw_set_colour(c_red)
	for(j = 0; j <= 2; j += 0.1)
	    draw_circle(CameraViewX+ButtonX,CameraViewY+ButtonY,QTETime-j,true)