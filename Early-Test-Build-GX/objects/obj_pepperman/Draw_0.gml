if flash
{
    if (global.enable_shaders) shader_set(shd_hit)
    draw_self()
    if (global.enable_shaders) shader_reset()
}
else
    draw_self()
