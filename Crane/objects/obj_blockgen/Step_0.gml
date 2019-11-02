if(global.timeLeft < 0){
	for (i = 0; i < array_length_1d(global.BLOCKPOOL); i++) {
		if (global.BLOCKPOOL[i].image_yscale == 0.5) {
			instance_destroy(global.BLOCKPOOL[i])
		}
	}
	instance_destroy()
}