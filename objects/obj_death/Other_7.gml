if (global.lives >= 1)
{
	obj_game.respawn()
}
else
{
	obj_game.end_game()
}

instance_destroy()