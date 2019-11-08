if(keyboard_check(vk_left) and x > (craneHands.sprite_width/2)){
	x -= velocityX
	if(objectHeld != noone){
		objectHeld.x = x + objectHeldDistanceX
		objectHeld.y = y + objectHeldDistanceY
		current = collision_line(objectHeld.x - (objectHeld.sprite_width/2), objectHeld.y,
			objectHeld.x - (objectHeld.sprite_width/2), objectHeld.y - objectHeld.sprite_height,
			obj_block, true, true)
		if(current != noone && !current.static){
			current.x -= velocityX
		}
	}
}else if(keyboard_check(vk_right) and x < room_width - (craneHands.sprite_width/2)){
	x += velocityX
	if(objectHeld != noone){
		objectHeld.x = x + objectHeldDistanceX
		objectHeld.y = y + objectHeldDistanceY
		current = collision_line(objectHeld.x+(objectHeld.sprite_width/2), objectHeld.y,
			objectHeld.x+(objectHeld.sprite_width/2), objectHeld.y-objectHeld.sprite_height,
			obj_block, true, true)
		if(current != noone && !current.static){
			current.x += velocityX
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

if(keyboard_check_pressed(ord("M"))){
	//closes hand
	if(craneHands.open and (y < 150 or x > (room_width/2) + (craneHands.sprite_width/2))){
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
	}else if(x > (room_width/2)){
		craneHands.image_speed = -1
		if(objectHeld != noone){
			objectHeld.static = false
			objectHeld = noone
		}
	}else if(craneHands.image_speed = 0){
		dontobject = instance_create_depth(x, y, -1000, obj_dont)
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
