
//code onlyruns whenever the transition is actually happening.
if(mode != TRANS_MODE.OFF){
	//if player is entering room, the opacity, set as percent, of the fade in will go down.
	if (mode == TRANS_MODE.INTRO){
		if(percent < 1){
			percent = 0;
		}
		else{
			percent -= percent/15 + .25 ;	
		}
	}
	//Same, but opposite of when entering
	else{
		percent += 25;
	}
	
	//this switches between states
	if(percent == 0 || percent >= 100){
		switch(mode){
		case TRANS_MODE.INTRO :{
			mode = TRANS_MODE.OFF;
			break;
		}
		case TRANS_MODE.NEXT :{
			mode = TRANS_MODE.INTRO;
			room_goto_next();
			break;
		}
		case TRANS_MODE.GOTO :{
			mode = TRANS_MODE.INTRO;
			room_goto(target);
			break;
		}
		case TRANS_MODE.RESTART :{
			mode = TRANS_MODE.INTRO;
			game_restart();
			break;
		}
	}
	}
	
}