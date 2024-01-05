// Initialize Global Variables
global.wave = 1
global.lives = 3
global.points = 0
global.multishotSpread = 15
global.pointsMultiplier = 1
global.innaccuracyMultiplier = 50
global.upgradeTimer = 6
global.paused = false
global.mode = MODE.ENDLESS
global.type = TYPE.CLASSIC

// Settings
global.vfx = true
global.vfxNoise = .05
global.vfxScanlines = .03
global.vfxChromatic = .15
global.vfxVHS = .10
global.vfxVignette = .2
global.fullscreen = false

// Debug
global.debug = false

// Load the save file
load()