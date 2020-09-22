//sets where the camera needs to go to
if(instance_exists(following)){
	xTo = following.x;
	yTo = following.y;
}

//sets the speed at which the camera moves
x += (xTo - x) / 10;
y += (yTo -y) / 9;

x = clamp(x, view_w_half + buff, room_width - view_w_half - buff);
y = clamp(y, view_h_half, room_height - view_h_half);
//shakes the camera when player fires a bullet
x += random_range(-shake_timer, shake_timer);
y += random_range(-shake_timer, shake_timer/2);
shake_timer = max(0, shake_timer-((1/shake_length) * shake_magnitude));

//actually moves the camera
camera_set_view_pos(camera, x - view_w_half, y - view_h_half);


layer_x(mountain_layer, (x *.80));

