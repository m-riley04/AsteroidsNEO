/// @function addUpgrade()
/// @description Adds an upgrade to the play area
function addUpgrade(upgrade=irandom_range(1, UPGRADE.EXTRALIFE))
{
	return instance_create_depth(0, irandom_range(0, room_height), -999, obj_upgrade, {upgrade: upgrade})
}