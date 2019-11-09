//Check minimum height
minimumHeight = 650
for(ix = 0; ix < room_width; ix++){
	check = collision_line(ix, minimumHeight,
						   ix+32, minimumHeight, obj_block, true, true)
	if(check == noone){
		// lose because wall not high enough
		// instance_create_depth(room_width/2, 100, -100, obj_pirate)
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
for(iy = leftLowest; iy < room_height - 60; iy++){
	for(ix = 0; ix < (room_width/2) - 32; ix++){
		// vertical box check
		verticalCheck = collision_rectangle(ix+1, iy, ix+30, iy+60, obj_block, true, true)
		if(iy < room_height - 128 and verticalCheck == noone){
			pirateCheck = collision_rectangle(ix+1, iy, ix+30, iy+60, obj_pirate, true, true)
			if(pirateCheck == noone){
				new = instance_create_depth(ix+1, iy, -300, obj_pirate)
				global.leftHoles++
				ix += 30
			}
		}
		//horizontal box check
		horizontalCheck = collision_rectangle(ix+1, iy, ix+60, iy+30, obj_block, true, true)
		if(horizontalCheck == noone){
			pirateCheck = collision_rectangle(ix+1, iy, ix+30, iy+60, obj_pirate, true, true)
			if(pirateCheck == noone){
				new = instance_create_depth(ix+1, iy, -300, obj_pirate)
				new.image_angle = 90
				new.y += new.sprite_height/2
				global.leftHoles++
				ix += 60
			}
		}
	}
}

//find hole in rightSide of wall
for(iy = rightLowest; iy < room_height - 60; iy++){
	for(ix = room_width/2; ix < room_width - 32; ix ++){
		// vertical box check
		verticalCheck = collision_rectangle(ix+1, iy, ix+30, iy+60, obj_block, true, true)
		if(iy < room_height - 128 and verticalCheck == noone){
			pirateCheck = collision_rectangle(ix+1, iy, ix+30, iy+60, obj_pirate, true, true)
			if(pirateCheck == noone){
				new = instance_create_depth(ix+1, iy, -300, obj_pirate)
				global.rightHoles++
				ix += 30
			}
		}
		//horizontal box check
		horizontalCheck = collision_rectangle(ix+1, iy, ix+60, iy+30, obj_block, true, true)
		if(horizontalCheck == noone){
			pirateCheck = collision_rectangle(ix+1, iy, ix+30, iy+60, obj_pirate, true, true)
			if(pirateCheck == noone){
				new = instance_create_depth(ix+1, iy, -300, obj_pirate)
				new.image_angle = 90
				new.y += new.sprite_height/2
				global.rightHoles++
				ix += 60
			}
		}
	}
}

//count I blocks
for (i = 0; i < instance_number(obj_block_I); i += 1){
	Iblock = instance_find(obj_block_I, i)
	if(Iblock.x < room_width/2){
		global.leftIandO++
	}else{
		global.rightIandO++
	}
}
//count O blocks
for (i = 0; i < instance_number(obj_block_O); i += 1){
	Oblock = instance_find(obj_block_O, i)
	if(Oblock.x < room_width/2){
		global.leftIandO++
	}else{
		global.rightIandO++
	}
}
//count L blocks
for (i = 0; i < instance_number(obj_block_L); i += 1){
	Lblock = instance_find(obj_block_L, i)
	if(Lblock.x < room_width/2){
		global.leftDifficult++
	}else{
		global.rightDifficult++
	}
}
//count S blocks
for (i = 0; i < instance_number(obj_block_S); i += 1){
	Sblock = instance_find(obj_block_S, i)
	if(Sblock.x < room_width/2){
		global.leftDifficult++
	}else{
		global.rightDifficult++
	}
}
//count T blocks
for (i = 0; i < instance_number(obj_block_T); i += 1){
	Tblock = instance_find(obj_block_T, i)
	if(Tblock.x < room_width/2){
		global.leftDifficult++
	}else{
		global.rightDifficult++
	}
}



/*
global.leftIandO = 0
global.leftDifficult = 0
global.leftHoles = 0

global.righttIandO = 0
global.rightDifficult = 0
global.rightHoles = 0
*/
startx = 100
starty = 200
new = instance_create_depth(startx, starty, -100, printObject)
new.number = global.leftIandO
startx += 100
new = instance_create_depth(startx, starty, -100, printObject)
new.number = global.leftDifficult
startx += 100
new = instance_create_depth(startx, starty, -100, printObject)
new.number = global.leftHoles


startx = 100
starty = 300
new = instance_create_depth(startx, starty, -100, printObject)
new.number = global.rightIandO
startx += 100
new = instance_create_depth(startx, starty, -100, printObject)
new.number = global.rightDifficult
startx += 100
new = instance_create_depth(startx, starty, -100, printObject)
new.number = global.rightHoles