// Initialize
if (!initialized)
{
	for (var i = 0; i < array_length(choices); i += 1)
	{
		var buttonText = choices[i][0]
		var buttonCommand = choices[i][1]
		var button = instance_create_depth(x, y+(i*100), depth, obj_button, {text: buttonText, command: buttonCommand})
		button.image_xscale = scaleX
		button.image_yscale = scaleY
		array_push(buttons, button)
	}
	
	initialized = true
}

// Controls
up = keyboard_check_pressed(vk_up)
down = keyboard_check_pressed(vk_down)
select = keyboard_check_pressed(vk_space)

if (down)
{
	if (selectedIndex == array_length(choices)-1)
	{
		selectedIndex = 0
	}
	else
	{
		selectedIndex += 1
	}
}
else if (up)
{
	if (selectedIndex <= 0)
	{
		selectedIndex = array_length(choices)-1
	}
	else
	{
		selectedIndex -= 1
	}
}

// Set colors and controls
for (var i = 0; i < array_length(buttons); i += 1)
{
	buttons[i].image_xscale = scaleX
	buttons[i].image_yscale = scaleY
}

buttons[selectedIndex].image_xscale = scaleX + 2
buttons[selectedIndex].image_yscale = scaleY + 1

// Command Check
if (select)
{
	var command = choices[selectedIndex][1]
	if (command)
	{
		command()
	}
}

