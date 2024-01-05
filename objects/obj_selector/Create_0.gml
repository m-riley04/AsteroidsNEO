arrowLeft	= instance_create_depth(x-arrowSpacing, y, depth, obj_arrow)
arrowRight	= instance_create_depth(x+arrowSpacing, y, depth, obj_arrow)
arrowLeft.image_angle += 180

hoveredLeft = false
hoveredRight = false

choices = [["Option #1", noone], ["Option #2", noone], ["Option #3", noone]]