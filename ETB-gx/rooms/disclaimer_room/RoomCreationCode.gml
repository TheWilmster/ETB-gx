global.enable_shaders = true;
global.force_disable_shaders = false;
if (!shaders_are_supported() || os_type == os_gxgames) {
	global.enable_shaders = false;
	global.force_disable_shaders = true;
}
if (global.force_disable_shaders) show_message("Warning! Either your graphics card doesnt support shaders, or you're playing this on GX Games. Shaders will now be automatically disabled.")
