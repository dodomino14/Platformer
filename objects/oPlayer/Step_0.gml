	
	
	
	//horizontal movement
	
	
//Checks to see if player is allowed to control the character at the moment
if(hascontrol = true){
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check(vk_space);
	key_dash = keyboard_check(vk_lshift);
}
else{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
	key_dash = 0;
}
//actually sets the values used for movement
var move = key_right-key_left;
hsp = move*walkspd;
vsp = grav+vsp;




	//jumping
	
	

//The purpose of jumptimer here is to make it so you can jump up to 10 frames after you walk off a ledge
if(jumptimer >0){
		jumptimer-=1;
}


//gives horizontal movement acceleration while mid air
//also makes it harder to switch directions in air
if(jumping == true){
	if(airtimer <.75)
		airtimer += .05;
	if(horizontalacceleration < 10 && horizontalacceleration >-10){
		horizontalacceleration += (key_right-key_left)*airtimer;
	}
	hsp += horizontalacceleration;
}


//Makes player jump when touching ground and not already jumping when space is pressed
if(jumptimer > 0 && key_jump && jumping == false){
	vsp-=jumpforce;
	jumping = true;
	spacepressed = true;
}



	//dashing
if(key_dash){
	hsp = hsp*1.75;
}



	
	//Collision Detection



//horizontal collision detection
if(place_meeting(x+hsp, y, oWall)){
	while(!place_meeting(x+sign(hsp), y, oWall)){
		x+=sign(hsp);
	}
	hsp = 0;
}

x+=hsp;

//vertical collision detection
if(place_meeting(x, y+vsp, oWall)){
	while(!place_meeting(x, y+sign(vsp), oWall)){
		y+=sign(vsp);
	}
	if(vsp>0){
		jumping = false;
		jumptimer = 10;
		horizontalacceleration = 0;
		airtimer = 0;
	}
	vsp = 0;
}
y+=vsp;


//Checking for weapon pickups
with(oWeaponPickup){
	if(place_meeting(x, y, oPlayer)){
	scEquipWeapon(weaponcarrying);
	instance_destroy();
	}
}





	//Animation
	
	
//These make sure the player sprite doesn't flip while they're in the air
if(keyboard_check(vk_nokey) || jumping){
	image_speed = 0;
	image_index = 0;
}
if(key_left && !jumping){
	image_speed = 16;
	sprite_index = sPlayerLeft;
}
else if(key_right && !jumping){
	image_speed = 16;
	sprite_index = sPlayerRight;
}



