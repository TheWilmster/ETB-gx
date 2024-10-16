global.enable_shaders = true;
global.force_disable_shaders = false;
if (!shaders_are_supported()) {
	global.enable_shaders = false;
	global.force_disable_shaders = true;
}
if (global.force_disable_shaders) show_message("Warning! Your browser does not support shaders. They will be automatically disabled.")
