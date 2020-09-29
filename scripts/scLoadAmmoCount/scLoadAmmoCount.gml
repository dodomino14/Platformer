///scLoadAmmoCount(AmmoAmount)
///@arg Weapon
function scLoadAmmoCount() {

	weapon = argument[0];
	lengthvar = array_length(weapon.ammoarray);
	
	for(var i = 0; i < lengthvar; i++){
		weapon.ammoarray[i].visible = true;
	}


	with instance_create_layer(display_get_gui_width()-(weapon.bulletspacing*lengthvar)-20, 0, "GunLayer",oAmmoGUIBackground){
		image_xscale = other.lengthvar/3;
	}


}
