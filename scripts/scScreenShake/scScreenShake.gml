///@arg Magnitude
///@arg Frames
function scScreenShake() {

	with(oCamera){
		if(argument[0] > shake_timer){
			shake_magnitude = argument[0];
			shake_timer = argument[0];
			shake_length = argument[1];
		}
	}



}
