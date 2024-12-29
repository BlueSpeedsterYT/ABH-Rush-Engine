/// @description Draw Message System

	draw_sprite_ext(sprQTEMessage, QTEMessage, CameraViewX+QTEMessageX, CameraViewY+(QTEMessage != 3 ? QTEMessageY+22 : QTEMessageY), QTEMessageXScale, QTEMessageYScale, 0, c_white, QTEMessageAlpha);