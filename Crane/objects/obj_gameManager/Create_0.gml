global.gravity = 9.8 / room_speed

new = instance_create_depth(608, 700, 1, obj_block)
new.static = true

window_set_size(room_width*2, room_height*2)