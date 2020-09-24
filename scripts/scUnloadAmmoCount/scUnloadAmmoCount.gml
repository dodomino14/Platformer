///scUnloadAmmoCount(AmmoAmount)
///@arg Weapon

function scUnloadAmmoCount(){

	weapon = argument[0]
	
	for(var i = 0; i<array_length_1d(weapon.ammoarray);i++){
		weapon.ammoarray[i].visible = false;
	}
	with(oAmmoGUIBackground){
		instance_destroy();	
	}
}