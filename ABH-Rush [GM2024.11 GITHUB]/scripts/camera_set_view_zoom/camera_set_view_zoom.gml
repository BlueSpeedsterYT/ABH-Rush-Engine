function camera_set_view_zoom(camera, width, height, target_zoom){

	var zoom_width, zoom_height;
	zoom_width = round(width * target_zoom)
	zoom_height = round(height * target_zoom)
	camera_set_view_size(camera, zoom_width, zoom_height);

}