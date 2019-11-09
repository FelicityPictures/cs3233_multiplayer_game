if room == rm_title {
	if !instance_exists(obj_M) {
		image_index = 2
	}
	else if !obj_M.firstGrabbed {
		image_index = 1
	}
} else if (room == rm_success) or (room == rm_failure) {
	if !instance_exists(obj_again) {
		image_index = 2
	}
	else if !obj_again.firstGrabbed {
		image_index = 1
	}
}