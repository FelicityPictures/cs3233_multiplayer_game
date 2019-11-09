if room == rm_title {
	if !instance_exists(obj_tab) {
		image_index = 2
	}
	else if !obj_tab.firstGrabbed {
		image_index = 1
	}
} else if (room == rm_success) or (room == rm_failure) {
	if !instance_exists(obj_play) {
		image_index = 2
	}
	else if !obj_play.firstGrabbed {
		image_index = 1
	}
}