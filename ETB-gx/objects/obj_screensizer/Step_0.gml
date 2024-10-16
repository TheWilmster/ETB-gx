global.resolution = {
	width: global.resolutions[global.resolution_index].width,
	height: global.resolutions[global.resolution_index].height
};
if (window_get_fullscreen() != global.fullscreen) window_set_fullscreen(global.fullscreen);
if (display_get_gui_width() != global.resolution.width * global.screenscale || display_get_gui_height() != global.resolution.height * global.screenscale) {
	display_set_gui_size(global.resolution.width * global.screenscale, global.resolution.height * global.screenscale);
}
if (camera_get_view_width(view_camera[0]) != global.resolution.width * global.screenscale || camera_get_view_height(view_camera[0]) != global.resolution.height * global.screenscale) {
	camera_set_view_size(view_camera[0], global.resolution.width * global.screenscale, global.resolution.height * global.screenscale);
}
if (view_get_wport(0) != global.resolution.width * global.screenscale || view_get_hport(0) != global.resolution.height * global.screenscale) {
	view_set_wport(0, global.resolution.width * global.screenscale);
	view_set_hport(0, global.resolution.height * global.screenscale)
}
if (surface_get_width(view_camera[0]) != global.resolution.width * global.screenscale || surface_get_height(view_camera[0]) != global.resolution.height) {
	surface_resize(application_surface, global.resolution.width * global.screenscale, global.resolution.height * global.screenscale);
}
if (window_get_width() != global.resolution.width * global.screenscale || window_get_height() != global.resolution.height * global.screenscale) {
	window_set_size(global.resolution.width * global.screenscale, global.resolution.height * global.screenscale);
}
SCALED_WIDTH = global.resolution.width * global.screenscale;
SCALED_HEIGHT = global.resolution.height * global.screenscale;
