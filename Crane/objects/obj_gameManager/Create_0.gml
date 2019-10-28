global.gravity = 9.8 / room_speed

instance_create_depth(608, 700, 1, obj_block_O)
instance_create_depth(608, 200, 1, obj_block_L)

window_set_size(room_width*2, room_height*2)

// CREATE FLOOR
instance_create_depth(room_width/2, room_height, 1, obj_floor)
instance_create_depth(room_width/2, room_height-16, 1, obj_floorDecoration)