// Get inputs
forward = keyboard_check(vk_up)
backward = keyboard_check(vk_down)
right = keyboard_check(vk_right)
left = keyboard_check(vk_left)
shoot = keyboard_check_pressed(vk_space)

// State
state()

// Boundaries
move_wrap(true, true, sprite_width/2)