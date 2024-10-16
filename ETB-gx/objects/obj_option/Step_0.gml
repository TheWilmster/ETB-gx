scr_getinput();
select += (key_down2 - key_up2);
select = clamp(select, 0, array_length(options) - 1);
if (key_jump) {
	switch select {
		case 0:
			global.resolution_index++;
			if (global.resolution_index > array_length(global.resolutions) - 1) {
				global.resolution_index = 0;
			}
			options[select][1] = global.resolution_index;
			break;
		case 1:
			global.screenscale = 
			(global.screenscale == 1) ? 1.2 :
			((global.screenscale == 1.2) ? 1.25 :
			((global.screenscale == 1.25) ? 1.4 :
			((global.screenscale == 1.4) ? 1.5 :
			((global.screenscale == 1.5) ? 1.6 :
			((global.screenscale == 1.6) ? 1.75 :
			((global.screenscale == 1.75) ? 2 :
			((global.screenscale == 2) ? 0.5 :
			((global.screenscale == 0.5) ? 0.6 :
			((global.screenscale == 0.6) ? 0.75 :
			((global.screenscale == 0.75) ? 0.8 : 1))))))))));
			options[select][1] = global.screenscale;
			break;
		case 2:
			global.antialiasing = !global.antialiasing
			display_reset(global.antialiasing, global.vsync);
			options[select][1] = global.antialiasing;
			break;
		case 3:
			global.fullscreen = !global.fullscreen;
			options[select][1] = global.fullscreen;
			break;
		case 4:
			global.screenshake = !global.screenshake;
			options[select][1] = global.screenshake;
			break;
		case 5:
			global.vsync = !global.vsync;
			display_reset(global.antialiasing, global.vsync);
			options[select][1] = global.vsync;
			break;
		case 6:
			if (!global.force_disable_shaders) {
				global.enable_shaders = !global.enable_shaders;
				options[select][1] = global.enable_shaders;
			} else {
				audio_play_sound(sfx_freefallland, 0, false);
			}
			break;
		case 7:
			global.resolution_index = 0;
			global.antialiasing = false;
			global.screenscale = 1;
			global.fullscreen = false;
			global.vsync = false;
			display_reset(global.antialiasing, global.vsync);
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
			break;
	}
}
if (key_start) instance_destroy();