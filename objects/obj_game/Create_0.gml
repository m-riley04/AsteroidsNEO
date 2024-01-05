// Initialize Variables
global.wave = 1
global.lives = 3
global.points = 0

// Waves
selectedMode = noone
wavePause = true
pauseLength = 2

// GUI
gui_surface = surface_create(window_get_width(), window_get_height)

// Gameplay Type
if (global.type == TYPE.CLASSIC)
{
	/// Classic Gameplay
	selectedMode = waveClassic
}
else if (global.type == TYPE.NEO)
{
	/// NEO Gameplay
	selectedMode = waveNEO
}

// Basic Functions
function wave_new()
{
	selectedMode()
}

function respawn()
{
	var centerX = room_width/2
	var centerY = room_height/2
	var player = instance_create_depth(centerX, centerY, -999, obj_ship)
	with (player)
	{
		while (distance_to_object(obj_asteroid) < 50)
		{
			x = irandom_range(centerX-100, centerX+100)
			y = irandom_range(centerY-100, centerY+100)
		}
	}
	global.lives -= 1
}

function end_game()
{
	game_restart()
}

function start_game()
{
	wave_new()
}

// Start the game
start_game()