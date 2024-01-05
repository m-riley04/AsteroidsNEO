surface_set_target(gui_surface)

draw_clear_alpha(0,0);

draw_set_alpha(1);
draw_set_font(fnt_main);
draw_set_halign(fa_right)
draw_set_valign(fa_top)
//draw_text(0, 0, "Points: ")
draw_text(185, 0, global.points)
/*
draw_text(0, 70, "Lives: ")
draw_text(100, 70, global.lives)
draw_text(0, 0, "Wave: ")
draw_text(100, 0, global.wave)
*/

for (var i = 0; i < global.lives; i += 1)
{
	draw_sprite_ext(spr_ship, 0, 125+(i*25), 50, 1, 1, 90, c_white, 1)
}

surface_reset_target()
draw_surface(gui_surface, 0, 0)