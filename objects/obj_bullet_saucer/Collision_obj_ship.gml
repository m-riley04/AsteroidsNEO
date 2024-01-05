if (other.invincible == false)
{
	instance_destroy(other)
	instance_create_depth(x, y, depth, obj_death)
	instance_destroy()
}