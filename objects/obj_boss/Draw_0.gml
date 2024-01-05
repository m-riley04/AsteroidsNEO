draw_self()

// Init
var textHeight = 50
var margin = 50
var width = 100
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_top)

// Draw Name
draw_text(room_width/2, margin, name)

// Healthbar
draw_rectangle(0+margin, 0+margin+textHeight, hp*(25), width+textHeight, false)

// Healthbar Border
draw_rectangle(0+margin, 0+margin+textHeight, room_width-margin, width+textHeight, true)