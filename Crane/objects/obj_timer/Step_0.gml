if( x > room_width/2){
	x -= movementVelocity	
}
if(y < room_height/2){
	y += movementVelocity	
}
if(size < 5){
	size += growthVelocity
}

image_xscale = size
image_yscale = size