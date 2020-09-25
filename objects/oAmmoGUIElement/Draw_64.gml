//Sets sprite to a shotgun shell

//NEEDS TO BE CHANGED SO DIFFERENT GUN TYPES SHOW DIFFERENT AMMO

draw_self();


//Makes the bullets flash white when you shoot
if(flash > 0){
	image_yscale = image_yscale + 0.2;
	image_xscale = image_xscale + 0.2;
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
	if(flash == 1){
		image_blend = make_color_hsv(255,255,255);
		image_alpha = 0.55;
		image_yscale = image_yscale -0.5;
		image_xscale = image_xscale -0.5;
	}
}