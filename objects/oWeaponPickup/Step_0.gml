//floats gently up and down

if(movpos < movlength/4){
	y+=movspd;
	movpos+=1;
}
else if(movpos < movlength/2){
	y-=movspd
	movpos +=1;
}
else{
	movpos = 0;
}



