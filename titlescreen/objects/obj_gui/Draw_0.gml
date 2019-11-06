if(room == rm_game){
	
	if(global.timeLeft > 0){
		// DRAW MIDDLE LINE
		//draw_set_color(c_black)
		//draw_line_width(room_width/2, 150, room_width/2, room_height, 4)
		
		// draw_set_circle_precision(c_white)
		
		//drawTimer
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
		draw_text_transformed(timer.x, timer.y, "Time's up!", 3, 3, 0)
	}else if(!global.timeOver){
		timer = instance_create_depth(timerX, timerY, -50, obj_timer)
		global.timeOver = true
	}
}
