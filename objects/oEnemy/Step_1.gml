if(hp <= 0){
	with(instance_create_layer(x,y,"Instances", oEnemyDead)){
		direction = other.hitfrom;
		hsp = lengthdir_x(4, direction);
		vsp = lengthdir_y(3, direction) -10;
		image_xscale = sign(hsp);
	}
	
	instance_destroy();
}