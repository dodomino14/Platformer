///scEquipWeapon(Weapon)
function scEquipWeapon(argument0) {


	//accepts a weapon then adds it to the equipped weapons array.
	for(i = 0; i< array_length_1d(global.weaparr); i++){
		if(global.weaparr[i] == oNull){
			global.weaparr[i] = argument0;
			break;
		}
	}


}
