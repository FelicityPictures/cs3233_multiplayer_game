//Check minimum height
minimumHeight = 650
for(ix = 0; ix < room_width; ix++){
	check = collision_line(ix, minimumHeight,
						   ix+32, minimumHeight, obj_block, true, true)
	if(check == noone){
		// lose because wall not high enough
		instance_create_depth(room_width/2, 100, -100, obj_pirate)
	}
}

// find the lowest level for left side
leftLowest = 0
for(ix = 0; ix < (room_width/2) - 32; ix += 16){
	for(iy = 150; iy < room_height - 64; iy++){
		leftCollided = collision_line(ix+1, iy, ix+32, iy, obj_block, true, true)
		if(leftCollided != noone){
			if(leftCollided.y > leftLowest){
				leftLowest = leftCollided.y
				// instance_create_depth(ix, iy, -100, obj_pirate)
			}
			break
		}
	}
}

// find the lowest level for right side
rightLowest = 0
for(ix = room_width/2; ix < room_width; ix += 16){
	for(iy = 150; iy < room_height - 64; iy++){
		rightCollided = collision_line(ix+1, iy, ix+32, iy, obj_block, true, true)
		if(rightCollided != noone){
			if(rightCollided.y > rightLowest){
				rightLowest = rightCollided.y
				// instance_create_depth(ix, iy, -100, obj_pirate)
			}
			break
		}
	}
}

//find hole in leftSide of wall
for(iy = leftLowest; iy < room_height - 32; iy++){
	for(ix = 0; ix < (room_width/2) - 32; ix ++){
		// vertical box check
		verticalCheck = collision_rectangle(ix+1, iy, ix+30, iy+60, obj_block, true, true)
		if(verticalCheck == noone){
			instance_create_depth(ix, iy, -100, obj_pirate)
			ix += 30
		}
	}
}

//find hole in rightSide of wall
for(iy = rightLowest; iy < room_height - 32; iy++){
	for(ix = room_width/2; ix < room_width - 32; ix ++){
		// vertical box check
		verticalCheck = collision_rectangle(ix+1, iy, ix+30, iy+60, obj_block, true, true)
		if(verticalCheck == noone){
			instance_create_depth(ix, iy, -100, obj_pirate)
			ix += 30
		}
	}
}