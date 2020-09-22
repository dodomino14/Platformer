

//Sets cursor
	//cursor_sprite = sCursor;
	game_set_speed(30, gamespeed_fps);



//used for moving left, right, up, and down
	hsp = 0;
	vsp = 1;
	grav = 2.5;
	walkspd = 6;
	jumpforce = 24;

//idea for a sprint feature. Currently implemented, but doesnt' really do much
	stamina = 100;

//jumping stats and controls
	jumping = false;
	hascontrol = true;
	jumptimer = 10;
	spacepressed = false;
	horizontalacceleration = 0;
	
//counts how long you're in the air. Starts at .1, goes up
	airtimer = 0;

//Keeps track of what weapon the player has equipped
	weaponequipped = oFist;