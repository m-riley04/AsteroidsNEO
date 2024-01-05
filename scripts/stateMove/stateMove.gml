function stateMove(){
	// Movement
	if (forward)
	{
		motion_add(image_angle, speedIncrement)
		image_index = 1
	}
	else if (backward)
	{
		motion_add(image_angle, -speedIncrement)
		image_index = 1
	}
	else
	{
		image_index = 0
	}

	// Turning
	if (right)
	{
		image_angle -= turnStrength
	}
	else if (left)
	{
		image_angle += turnStrength
	}

	// Set Max
	if (speed >= speedMax)
	{
		speed = speedMax
	}
	
	// Other States
	stateShoot()
}