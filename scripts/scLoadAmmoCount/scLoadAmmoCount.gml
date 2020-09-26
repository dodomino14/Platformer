///scLoadAmmoCount(AmmoAmount)
///@arg Weapon
///@arg BulletSpacing
function scLoadAmmoCount() {

	weapon = argument[0];
	bulletspacing = argument[1];
	
	for(var i = 0; i<array_length_1d(weapon.ammoarray); i++){
		weapon.ammoarray[i].visible = true;
	}


	with instance_create_layer(display_get_gui_width()-(bulletspacing*array_length_1d(weapon.ammoarray))-30, 0, "GunLayer",oAmmoGUIBackground){
		image_xscale = array_length_1d(other.weapon.ammoarray)/3;
	}


}
