image_angle = point_direction(x, y, mouse_x, mouse_y);


//Code only runs when the weapon the player has equipped has an ID equal to the ID of this weapon
if(oPlayer.weaponequipped.id == id){
	y = oPlayer.y+2;
	x = oPlayer.x;

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
	image_angle += recoiltimer*recoil* image_yscale;


	//recoil timer/logic for shooting
	if(recoiltimer >0) recoiltimer -= 2;

	//timer determies the cooldown time between shots
	timer -=1;




//handles shooting mechanics
	if (mouse_check_button_pressed(mb_left) && timer <= 0 && oWeaponBar.mouse_on_hotbar == false && ammocount > 0){
	
		//deducts ammo in clip by 1
		ammocount -=1;
		timer = 15;
	
		//creates bullet
		for(var i = 0; i<4; i++){
			with(instance_create_layer(x -2, y - 4, "GunLayer", oBullet)){
				damage = other.damage;
				knockback = true;
				speed = abs(oPlayer.hsp)/3  + 15;
				direction = other.image_angle + (oGun.recoiltimer* random_range(1, oGun.recoil) + random_range(-(i*5),i*7)) ;
				image_angle = direction;
			}
		
		}
		
	
		//Draws how much ammo is left in clip when you shoot a bullet
		ammoarray[iterator].flash = 2;
		iterator ++;
	

		//adds time to recoiltimer
		if(recoiltimer <70){
			recoiltimer +=10;
		}
	
		//shakes screen
		scScreenShake(3,8);
	
		//jolts the gun back a little when shooting
		x -= lengthdir_x(5, image_angle) * image_yscale;
		y -= lengthdir_y(2, image_angle) * image_yscale;
	
	}

}
