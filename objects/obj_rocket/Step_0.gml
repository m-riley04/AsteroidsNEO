// Targeting
if (targeting)
{
	if (instance_exists(obj_saucer))
	{
		target = obj_saucer
	}
	else if (instance_exists(obj_boss))
	{
		target = obj_boss
	}
	else if (instance_exists(obj_asteroid))
	{
		target = obj_asteroid
	}
	else
	{
		target = noone
	}

	// Move towards target
	if (target)
	{
		var targetObject = instance_nearest(x, y, target)
		
		//move_towards_point(target.x, target.y, 3)
		//image_angle = point_direction(x, y, target.x, target.y)
		if (image_angle <= point_direction(x, y, targetObject.x, targetObject.y))
		{
			image_angle += 2
		}
		else if (image_angle >= point_direction(x, y, targetObject.x, targetObject.y))
		{
			image_angle -= 2
		}
		motion_set(image_angle, 5)
		//direction = image_angle
	}
	else
	{
		motion_set(image_angle, 5)
	}

	// Set max speed
	if (speed >= maxSpd)
	{
		speed = maxSpd
	}
}

// Locked
if (locking)
{
	// Counter
	if (flashCount >= 10)
	{
		flashCount = 0
		flash = !flash
	}
	
	// Flashing
	if (flash)
	{
		image_alpha = 0
	}
	else
	{
		image_alpha = 1
	}
	
	flashCount += 1
}
else
{
	image_alpha = 1
}

//move_wrap(true, true, sprite_width/2)