if(oPlayer.weaponequipped.id == id ){
	y = oPlayer.y+3;

		//sets the gun to face the mouse
	image_angle = point_direction(x, y, mouse_x, mouse_y);

		//makes it so the gun doesn't flip upside down when you face the other direction
	if(image_angle >= 90) && (image_angle <=270){
		image_yscale = -1;
	}
	else{
		image_yscale = 1;
	}

	//sets recoil for the gun
	image_angle += oGun.recoiltimer*oGun.recoil* image_yscale;


	//recoil timer/logic for shooting
		//timer determies the cooldown time between shots
		timer -=1;
	if(recoiltimer >0) recoiltimer -= 2;


	//handles shooting mechanics
	if (mouse_check_button_pressed(mb_left) && timer <= 0 && oWeaponBar.mouse_on_hotbar == false){
	
		//creates bullet
		with(instance_create_layer(x -2, y - 2, "GunLayer", oBullet)){
			speed = abs(oPlayer.hsp)/3  + 15;
			damage = other.damage;
			direction = other.image_angle + (oGun.recoiltimer* random_range(1, oGun.recoil)) ;
			image_angle = direction;
		
		}
		//adds time to recoiltimer
		if(recoiltimer <70){
			recoiltimer +=10;
		}
	
		//shakes screen
		scScreenShake(1,5);
	
		//jolts the gun back a little when shooting
		x -= lengthdir_x(2, image_angle) * image_yscale;
		y -= lengthdir_y(2, image_angle) * image_yscale;
	
		timer = 5;
	}
}
else{
	
}



	
	

