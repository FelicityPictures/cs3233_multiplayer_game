if(global.timeLeft > 0){
	global.timeLeft -= delta_time
}

if(keyboard_check(vk_space)){
	calculateScore()
}