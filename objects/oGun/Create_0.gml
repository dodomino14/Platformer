event_inherited();
recoil = 2;
numBulletsShot = 1;
maxtimer = 8;
knockback = false;
ammoarraySprite = sPistolBullet;
ammocount = 15;
ammoarray = array_create(ammocount);
bulletspacing = 15;

xpos = display_get_gui_width()-bulletspacing;
ypos = 20;

for(var i = 0; i<array_length_1d(ammoarray);i++){
	ammoarray[i] = instance_create_layer(xpos, ypos, "GunLayer", oAmmoGUIElement);
	ammoarray[i].visible = false;
	ammoarray[i].sprite_index = ammoarraySprite;
	xpos-=bulletspacing;
}