hp = 25
name = "Mothership"

function checkHealth()
{
	if (hp <= 0)
	{
		instance_destroy()
	}
}

image_xscale = 5
image_yscale = 5