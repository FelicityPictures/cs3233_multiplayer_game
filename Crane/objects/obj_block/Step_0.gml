if(static == false){
	velocityY += global.gravity
	y += velocityY

	hitBlock = collision_line(x-(sprite_width/2), y, x+(sprite_width/2), y, obj_block, true, true);
	if(hitBlock != noone && !hitBlock.static){
		y -= velocityY
		velocityY = 0
	}
	
	hitFloor = collision_rectangle(x-(sprite_width/2), y-(sprite_height/2),
		x+(sprite_width/2), y+(sprite_height/2),
		obj_floor, false, true)
	if(hitFloor != noone){
		y = hitFloor.y - hitFloor.sprite_height
		velocityY = 0
	}
}