function waveClassic()
{
	for (var i = 0; i < (global.wave * 2)+2; i += 1)
	{
		var xx = irandom_range(0, room_width)
		var yy = irandom_range(0, room_height)
		var dir = random_range(0, 360)
		var spd = .5

		var asteroid = addAsteroid(ASTEROID_LARGE, spd, dir)
		
		// Check for spawn-fragging
		with (asteroid)
		{
			x = irandom_range(0, room_width)
			y = irandom_range(0, room_height)
			
			while (distance_to_object(obj_ship) < 100)
			{
				x = irandom_range(0, room_width)
				y = irandom_range(0, room_height)
			}
		}
		
	}
	
	// Add saucer
	alarm[0] = room_speed * 5
}