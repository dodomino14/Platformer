vsp = grav+vsp;

//horizontal collision detection
if(place_meeting(x+hsp, y, oWall)){
	while(!place_meeting(x+sign(hsp), y, oWall)){
		x+=sign(hsp);
	}
	hsp = -hsp;
}
x+=hsp;

//checks to see if there's gonna be ground below him
if(!place_meeting(x+(hsp *2), y+1, oWall) && knockback == false){
	hsp = hsp*-1;
}

//vertical collision detection
if(place_meeting(x, y+vsp, oWall)){
	while(!place_meeting(x, y+sign(vsp), oWall)){
		y+=sign(vsp);
	}
	if(knockback == true){
		knockback = false;
		hsp = -hsp;
	}
	
	jumping = false;
	vsp = 0;
}
y+=vsp;


if(knockback == false){
	//Animation
	if(jumping){
		image_speed = 0;
		image_index = 0;
	}
	else if(hsp<0){
		image_speed = 16;
		sprite_index = sEPlayerLeft;
	}
	else if(hsp>0){
		image_speed = 16;
		sprite_index = sEPlayerRight;
	}
}






