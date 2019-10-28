if(static == false){
	velocityY += global.gravity
	y += velocityY

	hitObject = collision_line(x-(sprite_width/2), y, x+(sprite_width/2), y, obj_block, true, true);
	/*
	hitObject = collision_rectangle(x-(sprite_width/2), y-(sprite_height/2),
		x+(sprite_width/2), y+(sprite_height/2),
		obj_block, true, true)
	*/
	if(hitObject != noone){
		// y = hitObject.y - hitObject.sprite_height
		y -= velocityY
		velocityY = 0
	}
	hitObject = collision_rectangle(x-(sprite_width/2), y-(sprite_height/2),
		x+(sprite_width/2), y+(sprite_height/2),
		obj_floor, false, true)
	if(hitObject != noone){
		y = hitObject.y - hitObject.sprite_height
		velocityY = 0
	}
}