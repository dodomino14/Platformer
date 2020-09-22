//sets up my variables. When done this way, the hotbar will spawn below the screen, then will fly up in the
//draw event

//gets height and width of everything
w = display_get_gui_width();
h = window_get_height();

boxh = sprite_height *.75;
boxw = (sprite_width)/10;
hotbar_height = sprite_height;

//speed at which the hotbar comes on screen
startspd = 15;
spd = startspd;

//where the hotbar stops when it's coming on screen
ydestination = h - hotbar_height;
starty = h + hotbar_height; 
y = starty; 
x = w/2;
ammoamount = pointer_null;
//the amount of space to the left and right of the hotbar on the screen
side_buffer = (w - sprite_width)/2;

//holds sprite values later. Used to display items in the hotbar
sprite = pointer_null;

//whether or not the mouse is far enough down the screen for the hotbar to pop up
mouse_on_hotbar = false;

//creates the array for the weapons the bar holds
global.weaparr = array_create(10); 
global.weaparr[0] = oNull;
global.weaparr[1] = oNull;
global.weaparr[2] = oNull;
global.weaparr[3] = oNull;
global.weaparr[4] = oNull;
global.weaparr[5] = oNull;
global.weaparr[6] = oNull;
global.weaparr[7] = oNull;
global.weaparr[8] = oNull;
global.weaparr[9] = oNull;