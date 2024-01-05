function stateShoot()
{
	// Shooting
	if (shoot && weapon != WEAPON.NONE)
	{
		switch (weapon)
		{
			case (WEAPON.GUN):
				var bullet = instance_create_depth(x, y, -99, obj_bullet)
				bullet.fire(image_angle, 10)
				break;
			case (WEAPON.LASER):
				if (canShoot)
				{
					instance_create_depth(x, y, depth, obj_laser, {direction: image_angle, image_angle: image_angle})
					canShoot = false
					alarm[2] = room_speed * .5
				}
				break;
			case (WEAPON.MULTISHOT):
				var bullet_left = instance_create_depth(x, y, -99, obj_bullet)
				var bullet_middle = instance_create_depth(x, y, -99, obj_bullet)
				var bullet_right = instance_create_depth(x, y, -99, obj_bullet)
				bullet_left.fire(image_angle+global.multishotSpread, 10)
				bullet_middle.fire(image_angle, 10)
				bullet_right.fire(image_angle-global.multishotSpread, 10)
				break;
			case (WEAPON.HEATSEEK):
				if (canShoot)
				{
					var rocket = instance_create_depth(x, y, -99, obj_rocket)
					canShoot = false
					alarm[2] = room_speed * .25
				}
				break;
			case (WEAPON.GRENADE):
				break;
		}
	}
}