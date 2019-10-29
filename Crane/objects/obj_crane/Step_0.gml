if(keyboard_check(vk_left)){
	x -= velocityX
	if(objectHeld != noone){
		objectHeld.x = x + objectHeldDistanceX
		objectHeld.y = y + objectHeldDistanceY
		current = collision_line(objectHeld.x - (objectHeld.sprite_width/2), objectHeld.y,
			objectHeld.x - (objectHeld.sprite_width/2), objectHeld.y - objectHeld.sprite_height,
			obj_block, true, true)
		if(current != noone){
			current.x -= velocityX
			/*
			current = collision_line(current.x - (current.sprite_width/2), current.y,
				current.x - (current.sprite_width/2), current.y - current.sprite_height,
				obj_block, true, true)
			*/
		}
	}
}else if(keyboard_check(vk_right)){
	x += velocityX
	if(objectHeld != noone){
		objectHeld.x = x + objectHeldDistanceX
		objectHeld.y = y + objectHeldDistanceY
		current = collision_line(objectHeld.x+(objectHeld.sprite_width/2), objectHeld.y,
			objectHeld.x+(objectHeld.sprite_width/2), objectHeld.y-objectHeld.sprite_height,
			obj_block, true, true)
		if(current != noone){
			current.x += velocityX
			/*
			current = collision_line(current.x+(current.sprite_width/2), current.y,
				current.x+(current.sprite_width/2), current.y-current.sprite_height,
				obj_block, true, true)
			*/
		}
	}
}

if(keyboard_check(vk_up)){
	y -= velocityY
	if(objectHeld != noone){
		objectHeld.y = y + objectHeldDistanceY
	}
}else if(keyboard_check(vk_down)){
	y += velocityY
	if(objectHeld != noone){
		objectHeld.y = y + objectHeldDistanceY
	}
}

if(keyboard_check_pressed(vk_space)){
	if(craneHands.open){
		craneHands.image_speed = 1
		objectClamped = collision_rectangle(x-25, y-(craneHands.sprite_height/2),
							x+25, y+(craneHands.sprite_height/2),
							obj_block, true, true)
		if(objectClamped != noone){
			objectHeld = objectClamped
			if(objectHeld.image_xscale == 0.5){
				objectHeld.image_xscale = 1
				objectHeld.image_yscale = 1
				objectHeldDistanceY = objectHeld.sprite_height
				objectHeldDistanceX = 0
			}else{
				objectHeldDistanceY = objectHeld.y - craneHands.y
				objectHeldDistanceX = objectHeld.x - craneHands.x
				objectHeld.static = true
			}
		}
	}else{
		craneHands.image_speed = -1
		if(objectHeld != noone){
			objectHeld.static = false
			objectHeld = noone
		}
	}
}

if(!craneHands.open && objectHeld == noone){
	craneHands.image_speed = -1
}

craneHands.x = x
craneHands.y = y