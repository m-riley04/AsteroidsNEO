if (room == rm_space)
{
	global.paused = !global.paused
	
	room_goto(rm_paused)
}