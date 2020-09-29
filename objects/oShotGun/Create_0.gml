//Some general weapon variables
recoil = 3;
recoiltimer = 0;
damage = 20;
knockback = true;

//timer is used to keep track of how long you have until you can shoot next
//timer is set to maxtimer every time you shoot
timer = 0;
maxtimer = 15;

//Specifies how many bullets get shot from the gun at once
//Mostly used for the sake of inheritance
numBulletsShot = 4;

//How much ammo the gun can hold at once
ammocount = 10;
//iterator is used to keep track of how many bullets in the gun have bene fired for the GUI
iterator = 0;

//creates an array that holds all of your bullets in your clip.
//used for the GUI
ammoarray = array_create(ammocount);
ammoarraySprite = sShotGunShell;

//Initializes the ammo array for each weapon and sets everything to be invisible
//Ammo array is used to display how many bullets are left in the gun in the GUI
bulletspacing = 22;
xpos = display_get_gui_width()-5;
ypos = 20;

for(var i = 0; i<array_length_1d(ammoarray);i++){
	ammoarray[i] = instance_create_layer(xpos, ypos, "GunLayer", oAmmoGUIElement);
	ammoarray[i].visible = false;
	ammoarray[i].sprite_index = ammoarraySprite;
	xpos-=bulletspacing;
}