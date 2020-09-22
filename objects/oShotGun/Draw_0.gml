/// @description Insert description here
// You can write your code in this editor
if(oPlayer.weaponequipped.id == id){
	draw_self()
}
if(timer>0){
	sprite_index = sShotGunFired;
	image_speed = 1.3;
}
else{
	sprite_index = sShotGun;
}