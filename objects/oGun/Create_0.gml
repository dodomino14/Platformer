timer = 0;
recoil = 2;
recoiltimer = 0;
damage = 25;
ammocount = 15;


ammoarray = array_create(ammocount);


//Initializes the ammo array for each weapon and sets everything to be invisible
//Ammo array is used to display how many bullets are left in the gun in the GUI
bulletspacing = 30;
xpos = display_get_gui_width()-bulletspacing;
ypos = 20;

for(var i = 0; i<array_length_1d(ammoarray);i++){
	ammoarray[i] = instance_create_layer(xpos, ypos, "GunLayer", oAmmoGUIElement);
	ammoarray[i].sprite_index = sPistolBullet;
	ammoarray[i].visible = false;
	xpos-=bulletspacing;
}