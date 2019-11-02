global.gravity = 9.8 / room_speed
global.timeLeft = 180000000
global.timeOver = false

instance_create_depth(608, 700, 1, obj_block_O)
instance_create_depth(608, 200, 1, obj_block_L)

window_set_size(room_width*1, room_height*1)

// CREATE FLOOR
instance_create_depth(room_width/2, room_height, -10, obj_floor)
instance_create_depth(room_width/2, room_height-16, -10, obj_floorDecoration)

// DECORATIVE CRAB
// instance_create_depth(24*(room_width/25), room_height-(spr_crab.sprite_height/1.5), 0, obj_crab)