if(static == false){
	velocityY += global.gravity
	y += velocityY

	// hitObject = instance_position(x, y, obj_block)
	hitObject = collision_rectangle(x-(sprite_width/2), y-(sprite_height/2), x+(sprite_width/2), y+(sprite_height/2), obj_block, true, true)
	if(hitObject != noone){
		y = hitObject.y - hitObject.sprite_height
		velocityY = 0
	}
	hitObject = collision_rectangle(x-(sprite_width/2), y-(sprite_height/2), x+(sprite_width/2), y+(sprite_height/2), obj_floor, true, true)
	if(hitObject != noone){
		y = hitObject.y - hitObject.sprite_height
		velocityY = 0
	}
}