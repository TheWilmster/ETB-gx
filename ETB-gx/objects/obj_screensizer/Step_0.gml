global.resolution = {
	width: global.resolutions[global.resolution_index].width,
	height: global.resolutions[global.resolution_index].height
};
SCALED_WIDTH = global.resolution.width * global.screenscale;
SCALED_HEIGHT = global.resolution.height * global.screenscale;
if (window_get_fullscreen() != global.fullscreen) window_set_fullscreen(global.fullscreen);
if (display_get_gui_width() != SCALED_WIDTH || display_get_gui_height() != SCALED_HEIGHT) {
	display_set_gui_size(SCALED_WIDTH, SCALED_HEIGHT);
}
if (camera_get_view_width(view_camera[0]) != SCALED_WIDTH || camera_get_view_height(view_camera[0]) != SCALED_HEIGHT) {
	camera_set_view_size(view_camera[0], SCALED_WIDTH, SCALED_HEIGHT);
}
if (view_get_wport(0) != SCALED_WIDTH || view_get_hport(0) != SCALED_HEIGHT) {
	view_set_wport(0, SCALED_WIDTH);
	view_set_hport(0, SCALED_HEIGHT)
}
if (surface_get_width(application_surface) != SCALED_WIDTH || surface_get_height(application_surface) != SCALED_HEIGHT) {
	surface_resize(application_surface, SCALED_WIDTH, SCALED_HEIGHT);
}
if (os_type == os_gxgames) {
	if (window_get_width() != SCALED_WIDTH || window_get_height() != SCALED_HEIGHT) {
		window_set_size(SCALED_WIDTH, SCALED_HEIGHT);
	}
}
