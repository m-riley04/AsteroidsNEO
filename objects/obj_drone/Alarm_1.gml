/// @description Shoot

if (instance_exists(obj_asteroid))
{
	var bullet = instance_create_depth(x, y, -999, obj_bullet)
	var inaccuracyX = irandom_range(-50, 50)
	var inaccuracyY = irandom_range(-50, 50)
	var asteroid = instance_nearest(x, y, obj_asteroid)
	bullet.fire(point_direction(x, y, asteroid.x+inaccuracyX, asteroid.y+inaccuracyY), 10)
}


alarm[1] = room_speed * .75