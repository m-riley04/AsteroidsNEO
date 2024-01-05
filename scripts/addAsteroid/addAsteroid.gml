/// @function addAsteroid(size, spd, angle)
/// @description
function addAsteroid(size, spd=0, angle=irandom_range(0, 360))
{
	return instance_create_depth(x, y, -999, obj_asteroid, {size: size, angle: angle, spd: spd})
}