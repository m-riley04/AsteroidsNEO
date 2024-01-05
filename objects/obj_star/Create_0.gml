image_index = irandom_range(0, sprite_get_number(sprite_index)-1)
direction = 270
speed = irandom_range(1, 3)
shrink = choose(true, false)
sizeMax = 1
sizeMin = random_range(.25, .9)
shrinkTimer = random_range(.25, 2)

alarm[0] = room_speed * shrinkTimer