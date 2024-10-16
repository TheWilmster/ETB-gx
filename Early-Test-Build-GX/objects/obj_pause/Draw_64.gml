if (instance_exists(obj_option)) exit;

if (pause && sprite_exists(application_sprite)) draw_sprite(application_sprite, 0, 0, 0);
draw_set_alpha(pause_alpha * 0.5);
draw_rectangle_color(0, 0, display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
draw_set_alpha(pause_alpha);
draw_sprite_tiled(spr_pizzacollect, 0, floor(current_time * 0.001 * 60), wave(-256, 256, 5, 0));
draw_set_font(font0)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(pause_alpha * 0.8);
draw_roundrect_color_ext((SCALED_WIDTH * 0.5) - 80, (SCALED_HEIGHT * 0.5) - 100, (SCALED * 0.5) + 80, (SCALED_HEIGHT * 0.5) + 100, 10, 10, c_black, c_black, false);
for (var i = 0; i < array_length(pause_opt); i++) {
	draw_set_alpha((pause_alpha * (pause_select == i)) + (0.5 * pause_alpha));
	draw_text(SCALED * 0.5, ((SCALED * 0.5) - ((24 * array_length(pause_opt)) * 0.5)) + (24 * i), pause_opt[i]);
}
draw_set_alpha(1);
