if shakeTimer > 0 {
	
	shakeTimer--
	
} else {
	
	isShaking = false

}

if isShaking {
	
	shakeX = random_range(-shakeAmount, shakeAmount)
	shakeY = random_range(-shakeAmount, shakeAmount)
	
	camera_set_view_pos(view_camera[0], shakeX, shakeY)
	
} else {

	camera_set_view_pos(view_camera[0], 0, 0)

}