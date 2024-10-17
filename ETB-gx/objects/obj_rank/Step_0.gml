if (floor(image_index) == (image_number - 1))
    image_speed = 0
image_xscale = lerp(image_xscale, (SCALED_WIDTH / ORIGINAL_WIDTH), 0.18);
image_yscale = lerp(image_yscale, (SCALED_HEIGHT / ORIGINAL_HEIGHT), 0.18);
