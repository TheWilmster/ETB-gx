#macro ORIGINAL_WIDTH 960
#macro ORIGINAL_HEIGHT 540
globalvar SCALED_WIDTH;
globalvar SCALED_HEIGHT;
SCALED_WIDTH = ORIGINAL_WIDTH;
SCALED_HEIGHT = ORIGINAL_HEIGHT;
global.resolutions = [
	{
		width: 960,
		height: 540,
		type: "Average Monitor (1920 x 1080, 16:9)"
	},
	{
		width: 720,
		height: 540,
		type: "Average Monitor (1440 x 1080, 4:3)"
	},
	{
		width: 1280,
		height: 540,
		type: "Ultra-Widescreen (2560 x 1080, 21:9)"
	},
	{
		width: 684,
		height: 384,
		type: "Chromebook (1366 x 768, 16:9)"
	},
	{
		width: 512,
		height: 384,
		type: "Tablet (1024 x 768, 4:3)"
	},
];
global.resolution_index = 0;
global.resolution = {
	width: global.resolutions[global.resolution_index].width,
	height: global.resolutions[global.resolution_index].height
};
global.screenscale = 1;
global.antialiasing = false;
global.fullscreen = false;
showing_debug_overlay = false;
global.screenshake = true;
global.vsync = false;
