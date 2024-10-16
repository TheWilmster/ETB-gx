if (instance_exists(obj_option)) exit;

scr_getinput()
if (key_start) {
	pause = !pause;
	if (pause) {
		if (sprite_exists(application_sprite)) sprite_delete(application_sprite);
		application_sprite = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0);
		with (obj_music) {
			if (song_to_pause != noone) audio_pause_sound(song_to_pause)
		}
		instance_deactivate_all(true);
		instance_activate_object(obj_screensizer);
		pause_select = 0;
	} else {
		instance_activate_all();
		with (obj_music) {
			if (song_to_pause != noone) audio_resume_sound(song_to_pause)
		}
	}
}
pause_alpha = approach(pause_alpha, pause, 0.05)
if (pause) {
	pause_select += (key_down2 - key_up2)
	pause_select = clamp(pause_select, 0, 3);
	if (key_jump) {
		switch pause_select {
			case 0:
				pause = false;
				instance_activate_all();
				with (obj_music)
					if (song_to_pause != noone) audio_resume_sound(song_to_pause);
				break;
			case 1:
				instance_create(0, 0, obj_option);
				break;
			case 2:
				game_restart();
				break;
			case 3:
				game_end();
				break;
		}
	}
}
