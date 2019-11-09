// if (room == rm_game) {
if (true == false) {
	if(global.timeLeft > 0){
		global.timeLeft -= delta_time
	}
	
} else if (room == rm_title) {
	if (!instance_nearest(x,y,obj_tab)) and (!instance_nearest(x,y,obj_M)) and (!instance_exists(obj_countstart)){
		instance_create_depth(512, 400, 0, obj_countstart)
		alarm[0] = 3 * room_speed
	}
}