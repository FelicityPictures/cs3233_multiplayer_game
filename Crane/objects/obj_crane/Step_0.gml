if(keyboard_check(vk_left)){
	x -= velocityX
}else if(keyboard_check(vk_right)){
	x += velocityX	
}

if(keyboard_check(vk_up)){
	y -= velocityY
}else if(keyboard_check(vk_down)){
	y += velocityY
}

if(objectHeld != noone){
	objectHeld.x = x
	objectHeld.y = y + objectHeldDistanceY
}

if(keyboard_check_pressed(vk_space)){
	if(craneHands.open){
		craneHands.image_speed = 1
		objectClamped = collision_rectangle(x-25, y-(craneHands.sprite_height/2),
							x+25, y+(craneHands.sprite_height/2),
							obj_block, true, true)
		if(objectClamped != noone){
			objectHeld = objectClamped
			objectHeldDistanceY = objectHeld.y - craneHands.y
			objectHeld.static = true
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