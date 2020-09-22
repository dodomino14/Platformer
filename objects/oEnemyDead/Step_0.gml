if(fin == false){
	vsp = grav+vsp;
	
	//horizontal collision detection
if(place_meeting(x+hsp, y, oWall)){
	while(!place_meeting(x+sign(hsp), y, oWall)){
		x+=sign(hsp);
	}
	x-= sign(hsp);
	hsp = 0;
}

x+=hsp;
//vertical collision detection
if(place_meeting(x, y+vsp, oWall)){
	while(!place_meeting(x, y+sign(vsp), oWall)){
		y+=sign(vsp);
	}
	vsp = 0;
	image_index = 1;
	fin = true;
}
y+=vsp;
}
