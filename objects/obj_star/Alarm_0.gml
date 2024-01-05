shrink = !shrink

if (shrink)
{
	image_xscale = sizeMin
	image_yscale = sizeMin
}
else
{
	image_xscale = sizeMax
	image_yscale = sizeMax
}

alarm[0] = room_speed * shrinkTimer