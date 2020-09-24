///scLoadAmmoCount(AmmoAmount)
///@arg Weapon
///@arg BulletSpacing









//You need to make it so weapon's ammo counts load as soon as they're picked up, but only
//become visible once you equip the weapon

//Most likely, you'll want to move most of this code to scEquipWeapon






function scLoadAmmoCount() {


	weapon = argument[0];
	bulletspacing = argument[1];

/*

	xpos = display_get_gui_width()-bulletspacing;
	ypos = 20;

	for(var i = 0; i<array_length_1d(weapon.ammoarray);i++){
		weapon.ammoarray[i] = instance_create_layer(xpos, ypos, "GunLayer", oAmmoGUIElement);
		xpos-=bulletspacing;
	}
	*/
	
	for(var i = 0; i<array_length_1d(weapon.ammoarray); i++){
		weapon.ammoarray[i].visible = true;
	}


	with instance_create_layer(display_get_gui_width()-(bulletspacing*array_length_1d(weapon.ammoarray))-30, 0, "GunLayer",oAmmoGUIBackground){
		image_xscale = array_length_1d(other.weapon.ammoarray)/3;
	}


}
