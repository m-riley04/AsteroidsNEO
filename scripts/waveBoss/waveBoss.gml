function waveBoss()
{
	var boss = addBoss(obj_boss)
	
	for (var i = 0; i < 3; i += 1)
	{
		var size = choose(SAUCER_SMALL, SAUCER_LARGE)
		var saucer = addSaucer(size)
	}
}