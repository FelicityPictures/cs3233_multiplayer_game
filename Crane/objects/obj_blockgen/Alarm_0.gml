for (i = 0; i < array_length_1d(global.BLOCKPOOL); i++) {
	if !instance_exists(global.BLOCKPOOL[i]) {
		global.BLOCKPOOL[i] = instance_create_depth(x + (i * block_offset), y, 1, block_list[irandom(4)])
	}
}

alarm[0] = room_speed * block_respawn_time