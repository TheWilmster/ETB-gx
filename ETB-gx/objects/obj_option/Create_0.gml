options = [
	["Resolution", global.resolution_index],
	["Screen Scale", global.screenscale],
	["Anti-Aliasing", global.antialiasing],
	["Fullscreen", global.fullscreen],
	["Screen Shake", global.screenshake],
	["VSYNC", global.vsync],
	["Disable Shaders", !global.enable_shaders],
	["Reset To Defaults", undefined]
];
select = 0;
if (global.force_disable_shaders) options[6][1] = true;