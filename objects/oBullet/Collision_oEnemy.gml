with(other){
	hp -= other.damage;
	flash = 3;
	hitfrom = other.direction;
	if(other.knockback == true){
		direction = hitfrom;
		hsp = lengthdir_x(4, direction);
		vsp = lengthdir_y(3, direction) -12;
		knockback = other.knockback;
	}
}

instance_destroy();