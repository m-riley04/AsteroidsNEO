click = mouse_check_button_pressed(mb_left)

if (click && position_meeting(mouse_x, mouse_y, self) && !disabled && command)
{
	command()
}