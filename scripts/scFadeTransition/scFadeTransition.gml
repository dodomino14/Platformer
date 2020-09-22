/// @desc scFadeTransition(mode, targetroom)
/// @arg Mode
/// @arg TargetRoom
function scFadeTransition() {
	with(oLevelTransition){
		mode = argument[0];
		if(argument_count >1) target = argument[1];
	}


}
