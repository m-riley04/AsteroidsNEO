click = mouse_check_button(mb_left)
released = mouse_check_button_released(mb_left)

// Set selected
if (position_meeting(mouse_x, mouse_y, self) && click)
{
	selected = true
}
else if (!click && released)
{
	selected = false
}

// Set position
if (selected)
{
	
	x = mouse_x
	
	if (x <= slider.x)
	{
		x = slider.x
	}
	else if (x >= slider.x+slider.sprite_width)
	{
		x = slider.x+slider.sprite_width
	}
	
	// Set value and command
	var val = (x-slider.x)/slider.image_xscale
	
	
	slider.value = clamp(val/slider.divisor, 0.0, slider.maxValue)
	if (slider.command != noone)
	{
		slider.command()
		
		// Apply
		if (instance_exists(obj_render))
		{
			obj_render.applySettings()
		}
	}
}
else
{
	x = slider.x + (slider.value / slider.maxValue);
}