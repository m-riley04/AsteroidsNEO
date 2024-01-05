/// @function addBoss(boss)
/// @description Adds a boss to the play area
function addBoss(boss=obj_boss)
{
	return instance_create_depth(choose(-50, room_width+50), room_height/2, -999, boss)
}