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
		objectClamped = collision_rectangle(x-(craneHands.sprite_width/2), y-(craneHands.sprite_height/2),
							x+(craneHands.sprite_width/2), y+(craneHands.sprite_height/2),
							obj_block, false, true)
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

craneHands.x = x
craneHands.y = y