draw_set_color(c_gray);
if (global.enable_shaders) shader_set(shdr_wind);
draw_sprite_tiled(normalT_clouds, 0, (current_time * 0.001 * 60) * 0.5, 0);
if (global.enable_shaders) shader_reset();
draw_set_color(c_white);
for (var i = 0; i < array_length(options); i++) {
	var str = options[i][0];
	switch i {
		case 0:
			str += string_concat(" - ", global.resolutions[options[i][1]].type);
			break;
		case 1:
			str += string_concat(" - ", options[i][1], "x");
			break;
		case 7:
			break;
		default:
			str += string_concat(" - ", options[i][1] ? "On" : "Off");
			break;
	}
	draw_set_font(font0)
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha((select == i) + 0.5);
	if (i == 6 && global.force_disable_shaders) draw_set_color(c_gray);
	draw_text(SCALED_WIDTH * 0.5, ((SCALED_HEIGHT * 0.5) - (array_length(options) * 12 * 0.5)) + (12 * i), str);
	draw_set_color(c_white);
	draw_set_alpha(1);
}
