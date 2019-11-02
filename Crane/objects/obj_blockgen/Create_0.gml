randomize()

global.BLOCKPOOL = [noone, noone, noone, noone, noone]
block_list = [obj_block_I, obj_block_L, obj_block_O, obj_block_S, obj_block_T]
block_offset = 60
block_respawn_time = 5


x = room_width/2 - (block_offset*2.125)
startY = 50

for (i = 0; i < array_length_1d(global.BLOCKPOOL); i++) {
	global.BLOCKPOOL[i] = instance_create_depth(x + (i * block_offset), startY,
		1, block_list[irandom(4)])
	global.BLOCKPOOL[i].static = true
	global.BLOCKPOOL[i].image_xscale = 0.5
	global.BLOCKPOOL[i].image_yscale = 0.5
}

alarm[0] = room_speed * block_respawn_time