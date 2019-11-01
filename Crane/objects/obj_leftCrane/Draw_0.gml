draw_set_alpha(1.0)
draw_set_color(c_silver)
draw_rectangle(x - 5, 0, x + 5, y - 5, false)

if(objectHeld != noone){
	draw_set_alpha(0.2)
	draw_rectangle(objectHeld.x-(objectHeld.sprite_width/2), objectHeld.y,
				objectHeld.x+(objectHeld.sprite_width/2), room_height, false)
}