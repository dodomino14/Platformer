with(oPlayer){
	if(hascontrol){
		hascontrol = false;
		scFadeTransition(TRANS_MODE.GOTO, other.target);
	}
}