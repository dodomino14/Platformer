timer = 0;
recoil = 3;
recoiltimer = 0;
damage = 20;

//How much ammo the gun can hold at once
ammocount = 10;
iterator = 0;

//creates an array that holds all of your bullets in your clip.
//used for the GUI

ammoarray = array_create(ammocount);



//Initializes the ammo array for each weapon and sets everything to be invisible
//Ammo array is used to display how many bullets are left in the gun in the GUI
bulletspacing = 30;
xpos = display_get_gui_width()-bulletspacing;
ypos = 20;

for(var i = 0; i<array_length_1d(ammoarray);i++){
	ammoarray[i] = instance_create_layer(xpos, ypos, "GunLayer", oAmmoGUIElement);
	ammoarray[i].visible = false;
	xpos-=bulletspacing;
}


//image_index = 0;