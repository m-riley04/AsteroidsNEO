click = mouse_check_button_pressed(mb_left)
var choice = choices[selectedIndex]

if (click && position_meeting(mouse_x, mouse_y, arrowLeft))
{
	if (selectedIndex <= 0)
	{
		selectedIndex = array_length(choices)-1
	}
	else
	{
		selectedIndex -= 1
	}
	
	// Perform action
	if (choices[selectedIndex][1] != noone)
	{
		choices[selectedIndex][1]()
	}
}
else if (click && position_meeting(mouse_x, mouse_y, arrowRight))
{
	if (selectedIndex == array_length(choices)-1)
	{
		selectedIndex = 0
	}
	else
	{
		selectedIndex += 1
	}
	
	// Perform action
	if (choices[selectedIndex][1] != noone)
	{
		choices[selectedIndex][1]()
	}
}