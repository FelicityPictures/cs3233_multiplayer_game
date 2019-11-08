if(room == rm_title){
	
	if (!instance_nearest(x,y,obj_tab)) and (!instance_nearest(x,y,obj_M)) and (!instance_exists(obj_countstart)){
		instance_create_depth(512, 400, 0, obj_countstart)
		alarm[1] = 5 * room_speed
	}else {
		draw_set_color(c_black)
		draw_text(45, 295, "The objective of Block Fortress is to build a wall of bricks higher than your opponent within 2 minutes.")
		draw_text(90, 360, "The more airtight your wall is, the more points you'll get (so don't just make a thin tower!)")
		draw_text(95, 425, "Also beware- if you both don't hit a minimum build height when time runs out, you both lose!")
		draw_text(55, 490, "Blocks for building will be located at the top of the screen. Learn the controls below to get started!")
	}
}
