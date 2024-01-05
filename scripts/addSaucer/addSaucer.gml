/// @function addSaucer(size)
/// @description Adds a saucer to the play area
function addSaucer(size=irandom_range(1, 2))
{
	return instance_create_depth(0, irandom_range(0, room_height), -999, obj_saucer, {size: size})
}