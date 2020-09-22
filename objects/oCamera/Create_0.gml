/// @description Insert description here
// You can write your code in this editor
camera = view_camera[0];
following = oPlayer;
camera_set_view_size(camera, 371, 209);

view_w_half = camera_get_view_width(camera)/2;
view_h_half = camera_get_view_height(camera)/2 + 15;
xTo = xstart;
yTo = ystart;
shake_magnitude = 0;
shake_timer = 0;
shake_length = 0;
buff = 32;

//background scrolling
mountain_layer = layer_get_id("Mountains");
mountainY = layer_get_y(mountain_layer);

