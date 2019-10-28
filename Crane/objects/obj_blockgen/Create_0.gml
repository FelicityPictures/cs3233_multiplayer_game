// randomize()
x = room_width/2
y = 100

global.BLOCKPOOL = [noone, noone, noone, noone, noone]
block_list = [obj_block_I, obj_block_L, obj_block_O, obj_block_S, obj_block_T]
block_offset = 150
block_respawn_time = 5
alarm[0] = room_speed * block_respawn_time

for (i = 0; i < array_length_1d(global.BLOCKPOOL); i++) {
	global.BLOCKPOOL[i] = instance_create_depth(x + (i * block_offset), y, 1, block_list[irandom(4)])
}