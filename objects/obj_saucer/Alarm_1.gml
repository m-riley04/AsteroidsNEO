/// @description Shooting
if (size == SAUCER_LARGE)
{
	var bullet = instance_create_depth(x, y, -999, obj_bullet_saucer)
	bullet.fire(random_range(0, 360), 7)
}
else
{
	if (instance_exists(obj_ship))
	{
		var inaccuracyX = global.innaccuracyMultiplier * irandom_range(0, 4)
		var inaccuracyY = global.innaccuracyMultiplier * irandom_range(0, 4)
		var bullet = instance_create_depth(x, y, -999, obj_bullet_saucer)
		bullet.fire(point_direction(x, y, obj_ship.x+inaccuracyX, obj_ship.y+inaccuracyY), 7)
	}
}

alarm[1] = room_speed * .75