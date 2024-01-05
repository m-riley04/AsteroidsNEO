image_xscale = size * .6
image_yscale = size * .6
image_angle = random_range(0, 360)
image_index = irandom_range(0, 3)

function explode(asteroids)
{
	instance_create_depth(x, y, -999, obj_explosion)
	if (size == ASTEROID_SMALL)
	{
		global.points += 25 * global.pointsMultiplier
		instance_destroy()
	}
	else if (size == ASTEROID_MEDIUM)
	{
		for (var i = 0; i < asteroids; i += 1)
		{
			addAsteroid(ASTEROID_SMALL, 2, random_range(0, 360))
		}
		global.points += 100 * global.pointsMultiplier
		instance_destroy()
	}
	else
	{
		for (var i = 0; i < asteroids; i += 1)
		{
			addAsteroid(ASTEROID_MEDIUM, 1, random_range(0, 360))
		}
		global.points += 250 * global.pointsMultiplier
		instance_destroy()
	}
}


motion_set(angle, spd)