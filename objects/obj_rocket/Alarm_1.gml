/// @description Pause
targeting = false
locking = true
speed = 0

if (instance_exists(target))
{
	image_angle = point_direction(x, y, target.x, target.y)
}

// Set lock-on timer
alarm[0] = room_speed * 1.5