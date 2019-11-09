// if (room == rm_game) {
if (true == false) {
	window_set_size(room_width*1, room_height*1)
	physics_world_gravity(0, global.gravityY)

	// CREATE FLOOR
	instance_create_depth(room_width/2, room_height, -10, obj_floor)
	instance_create_depth(room_width/2, room_height-16, -10, obj_floorDecoration)

	// DECORATIVE CRAB
	// instance_create_depth(24*(room_width/25), room_height-(spr_crab.sprite_height/1.5), 0, obj_crab)
}