








//NEEDS TO BE FIXED! THIS IS SOME HARD CODED GARBAGE









	//equips item when player presses number button
	if(keyboard_check_pressed(ord("1"))){
		if(oPlayer.weaponequipped != oFist) scUnloadAmmoCount(oPlayer.weaponequipped);
		script_execute(scUnequipWeapons, noone);
		global.weaparr[0].x = oPlayer.x;
		global.weaparr[0].y = oPlayer.y+2;
		oPlayer.weaponequipped = global.weaparr[0];
		scLoadAmmoCount(oPlayer.weaponequipped);
	}
	
	//Should probably create a script that'll do the stuff inside
	//of this if statement. It's got everything you need.
	if(keyboard_check_pressed(ord("2"))){
		if(oPlayer.weaponequipped != oFist) scUnloadAmmoCount(oPlayer.weaponequipped);
		script_execute(scUnequipWeapons, noone);
		global.weaparr[1].x = oPlayer.x;
		global.weaparr[1].y = oPlayer.y+2;
		oPlayer.weaponequipped = global.weaparr[1];
		scLoadAmmoCount(oPlayer.weaponequipped);
	}
		if(keyboard_check_pressed(ord("3"))){
		script_execute(scUnequipWeapons, noone);
		global.weaparr[1].equipped = true;	
	}
		if(keyboard_check_pressed(ord("4"))){
		script_execute(scUnequipWeapons, noone);
		global.weaparr[1].equipped = true;	
	}
		if(keyboard_check_pressed(ord("5"))){
		script_execute(scUnequipWeapons, noone);
		global.weaparr[1].equipped = true;	
	}
		if(keyboard_check_pressed(ord("6"))){
		script_execute(scUnequipWeapons, noone);
		global.weaparr[1].equipped = true;	
	}
		if(keyboard_check_pressed(ord("7"))){
		script_execute(scUnequipWeapons, noone);
		global.weaparr[1].equipped = true;	
	}
		if(keyboard_check_pressed(ord("8"))){
		script_execute(scUnequipWeapons, noone);
		global.weaparr[1].equipped = true;	
	}
		if(keyboard_check_pressed(ord("9"))){
		script_execute(scUnequipWeapons, noone);
		global.weaparr[1].equipped = true;	
	}