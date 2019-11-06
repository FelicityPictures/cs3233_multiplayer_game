if(keyboard_check(ord("A")) and x > (craneHands.sprite_width/2)){
	x -= velocityX
	if(objectHeld != noone){
		objectHeld.x = x + objectHeldDistanceX
	}
}else if(keyboard_check(ord("D")) and x < room_width - (craneHands.sprite_width/2)){
	x += velocityX
	if(objectHeld != noone){
		objectHeld.x = x + objectHeldDistanceX
	}
}

if(keyboard_check(ord("W"))){
	y -= velocityY
	if(objectHeld != noone){
		objectHeld.y = y + objectHeldDistanceY
	}
}else if(keyboard_check(ord("S"))){
	y += velocityY
	if(objectHeld != noone){
		objectHeld.y = y + objectHeldDistanceY
	}
}

if(keyboard_check_pressed(vk_tab)){
	//closes hand
	if(craneHands.open and (y < 150 or x < (room_width/2) - (craneHands.sprite_width/2))){
		craneHands.image_speed = 1
		objectClamped = collision_rectangle(x-25, y-(craneHands.sprite_height/2),
							x+25, y+(craneHands.sprite_height/2),
							obj_block, true, true)
		if(objectClamped != noone){
			objectHeld = objectClamped
			if(objectHeld.image_xscale == 0.5){
				objectHeld.image_xscale = 1
				objectHeld.image_yscale = 1
				objectHeldDistanceY = 0
				objectHeldDistanceX = -objectHeld.sprite_width/2
			}else{
				objectHeldDistanceY = objectHeld.y - craneHands.y
				objectHeldDistanceX = objectHeld.x - craneHands.x
				objectHeld.static = true
			}
			objectHeld.depth = -100
		}
	}else if(x < (room_width/2) - (craneHands.sprite_width/2)){
		craneHands.image_speed = -1
		if(objectHeld != noone){
			objectHeld.static = false
			if objectHeld.firstGrabbed {
				objectHeld.firstGrabbed = false
			}
			objectHeld = noone
		}
	}
}

if(!craneHands.open && objectHeld == noone){
	craneHands.image_speed = -1
}

craneHands.x = x
craneHands.y = y

if(global.timeLeft <= 0){
	instance_destroy(craneHands)
	instance_destroy()
}
