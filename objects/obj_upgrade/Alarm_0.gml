/// @description Move
move_towards_point(irandom_range(0, room_width), irandom_range(0, room_height), 1)
if (irandom_range(0, 2) == 0)
{
	speed = 0
	alarm[0] = room_speed * 1
}
else
{
	alarm[0] = room_speed * 3
}