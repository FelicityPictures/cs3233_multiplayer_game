if(room == rm_game){
	draw_set_color(c_black)
	draw_line_width(room_width/2, 150, room_width/2, room_height, 4)
	/*
	draw_set_color(c_gray)
	for(i = 0; 32 * i < room_width; i++){
		// draw_line_width(room_width/2, 150, room_width/2, room_height, 4)
		draw_line((room_width/2) + (32 * i), 150, (room_width/2) + (32 * i), room_height)
		draw_line((room_width/2) - (32 * i), 150, (room_width/2) - (32 * i), room_height)
	}
	*/
}
