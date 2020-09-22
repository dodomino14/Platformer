

//Because player can resize window. I reset height and width every
//frame
w = display_get_gui_width();
h = window_get_height();

//begins drawing everything when mouse reaches the bottom of the screen
if(window_mouse_get_y() > h - sprite_height){
	mouse_on_hotbar = true;
	
	//handles the movement of the hotbar
	if(y > ydestination){
		if(y - spd <= ydestination){
			y-=1;
		}
		else{
			y-=spd;
			if(spd >5){
				spd -=.5;
			}
			
		}
	}
	draw_sprite(sWeaponBar,0,x,y);
	
	//draws each of the items in the hotbar
	for(var i = 0; i<10; i++){
		sprite = global.weaparr[i].sprite_index;
		draw_sprite_stretched(sprite, 0, i*boxw + side_buffer, y+boxh/8, boxw, boxh);
	}
	
	//equips item when clicked on
	if(mouse_check_button_pressed(mb_left)){
		if(window_mouse_get_x() < side_buffer + sprite_width && window_mouse_get_x() > side_buffer && global.weaparr[(window_mouse_get_x()- side_buffer)/boxw] != oNull){
			for(var i = 0; i<10; i++){
				global.weaparr[i].equipped = false;
			}
			global.weaparr[(window_mouse_get_x()- side_buffer)/boxw].equipped = true;
		}
		
	}
	
}

//slowly slides the hotbar off the screen when mouse isn't on the bottom of the screen
else{
	mouse_on_hotbar = false;
	if(y < starty){
		if(y + spd >= starty){
			y+=1;
		}
		else{
			y+=spd;
			if(spd <15){
				spd +=.75;
			}
		}
	}
	else{
		spd = startspd;
		y = starty;
	}
	draw_sprite(sWeaponBar,0,x,y);
	for(var i = 0; i<10; i++){
		sprite = global.weaparr[i].sprite_index;
		draw_sprite_stretched(sprite, 0, i*boxw + side_buffer, y+boxh/8, boxw, boxh);
	}
}
