draw_self()

if (invincible)
{
	draw_sprite(spr_shield, 0, x, y)
}

if (global.debug)
{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_red, 0.5);
}