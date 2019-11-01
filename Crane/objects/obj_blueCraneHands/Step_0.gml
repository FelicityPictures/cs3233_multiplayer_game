if(image_speed > 0 && open && image_index >= 3){
	image_speed = 0	
	image_index = 3
	open = false
}
if(image_speed < 0 && !open && image_index < 1){
	image_speed = 0
	image_index = 0
	open = true
}