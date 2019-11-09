if(room == rm_title){	
	draw_set_color(c_white)
	draw_text_transformed(500, 30, "Build an airtight wall of blocks to", 1.3, 1.3, 0)
	draw_text_transformed(500, 60, "protect the island from a pirate invasion!", 1.3, 1.3, 0)
	draw_text_transformed(500, 105, "Whoever builds their half of the wall", 1.3, 1.3, 0) 
	draw_text_transformed(500, 135, "with more blocks in two minutes wins!", 1.3, 1.3, 0)
	draw_text_transformed(500, 180, "The less holes your half of the wall has,", 1.3, 1.3, 0) 
	draw_text_transformed(500, 210, "the more points you'll win!", 1.3, 1.3, 0)
	draw_text_transformed(500, 255, "(Be sure you BOTH build a wall high enough to stop the pirates!)", 0.8, 0.8, 0)
	draw_set_alpha(0.3)
	draw_text_transformed(30, 600, "50 points", 2, 2, 0)
	draw_text_transformed(120, 630, "each", 2, 2, 0)
	draw_text_transformed(825, 600, "100 points", 2, 2, 0)
	draw_text_transformed(935, 630, "each", 2, 2, 0)
	draw_set_alpha(1)
	
}else if(room == rm_game){
	if(global.timeLeft > 0){
		draw_sprite(spr_timer, 2, timerX, timerY)
		draw_set_color(c_black)
		draw_set_halign(fa_center)
		draw_set_valign(fa_center)
		draw_text_transformed(timerX, timerY, string(floor(global.timeLeft/1000000)), 1.5, 1.5, 0)
		draw_set_color($bb8430)
		draw_text_transformed(60, 540, "MIN BUILD HEIGHT", 0.8, 0.8, 0)
		draw_text_transformed(965, 540, "MIN BUILD HEIGHT", 0.8, 0.8, 0)
		draw_set_color(c_black)
	}else if(global.timeOver){
		draw_set_color(c_red)
		draw_text_transformed(timer.x, timer.y, "Time's up!", 2.5, 2.5, 0)
	}else if(!global.timeOver){
		timer = instance_create_depth(timerX, timerY, -50, obj_timer)
		global.timeOver = true
	}
}
/*
else if (room == rm_bothLose){
	
}else if (room == rm_p1Wins or room == rm_p2Wins){
	
}
*/