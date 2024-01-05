if (invincible == false)
{
	instance_destroy()
	other.explode(2)
	instance_create_depth(x, y, depth, obj_death)
}