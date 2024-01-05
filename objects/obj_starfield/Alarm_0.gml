/// @description Create star
var starX = irandom_range(0+margin, room_width-margin)
var spawnTimer = random_range(.5, 1)
instance_create_layer(starX, 0, "Starfield", obj_star)

alarm[0] = room_speed * spawnTimer