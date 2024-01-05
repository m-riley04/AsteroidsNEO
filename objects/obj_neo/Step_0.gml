if (obj_logo.image_xscale >= 3.75)
{
	image_alpha = 1
	if (shrink)
	{
		if (image_xscale >= maxShrink)
		{
			image_xscale -= shrinkInterval
			image_yscale -= shrinkInterval
		}
	}
	else
	{
		if (image_xscale < maxGrow)
		{
			image_xscale += shrinkInterval
			image_yscale += shrinkInterval
		}
	}


	if (image_xscale >= maxGrow)
	{
		shrink = true
	}
	else if (image_xscale <= maxShrink)
	{
		shrink = false
	}
}