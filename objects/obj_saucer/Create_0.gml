// Set size
if (global.points >= 40000)
{
	size = SAUCER_SMALL
}

image_xscale = .6 * size
image_yscale = .6 * size

// Play audio

// Starting point
move_towards_point(irandom_range(0, room_width), irandom_range(0, room_height), 3)
alarm[0] = room_speed * 3
alarm[1] = room_speed * .75