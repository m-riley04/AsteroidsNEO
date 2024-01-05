image_index = upgrade

// Move
move_towards_point(irandom_range(0, room_width), irandom_range(0, room_height), 1)
alarm[0] = room_speed * 1

// Functions
function bomb()
{
	for (var i = 0; i < instance_count; i += 1)
	{
		var obj = instance_id_get(i)
		if (obj.object_index == obj_asteroid)
		{
			obj.explode(2)
		}
	}
}


function shield()
{
	obj_ship.invincible = true
	obj_ship.alarm[0] = room_speed * 10
}

function laser()
{
	obj_ship.weapon = WEAPON.LASER
	obj_ship.alarm[1] = room_speed * 10
}

function multishot()
{
	obj_ship.weapon = WEAPON.MULTISHOT
	obj_ship.alarm[1] = room_speed * 10
}

function heatseek()
{
	obj_ship.weapon = WEAPON.HEATSEEK
	obj_ship.alarm[1] = room_speed * 10
}

function grenade()
{
	obj_ship.weapon = WEAPON.GRENADE
	obj_ship.alarm[1] = room_speed * 10
}

function freeze()
{
	for (var i = 0; i < instance_count; i += 1)
	{
		instance_id_get(i).speed = 0
	}
}

function multiplier()
{
	global.pointsMultiplier = 2
}

function drone()
{
	var drone = instance_create_depth(x, y, obj_ship.depth, obj_drone)
}

function shockwave()
{
	var objs = instance_count
	for (var i = 0; i < objs; i += 1)
	{
		var obj = instance_id_get(i)
		if (obj.object_index == obj_asteroid)
		{
			obj.explode(2)
		}
	}
}

function extraLife()
{
	global.lives += 1
}