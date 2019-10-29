for (i = 0; i < array_length_1d(global.BLOCKPOOL); i++) {
	if (global.BLOCKPOOL[i].y == startY) {
		instance_destroy(global.BLOCKPOOL[i])
	}
	global.BLOCKPOOL[i] = instance_create_depth(x + (i * block_offset), startY,
		1, block_list[irandom(4)])
	global.BLOCKPOOL[i].static = true
	global.BLOCKPOOL[i].image_xscale = 0.5
	global.BLOCKPOOL[i].image_yscale = 0.5
}

alarm[0] = room_speed * block_respawn_time