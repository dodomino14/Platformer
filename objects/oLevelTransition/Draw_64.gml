//only draws when actually transitioning from level to level
if(mode != TRANS_MODE.OFF){
draw_set_color(c_black);
draw_set_alpha(percent/100);
draw_rectangle(0,0, w, h, false);
}
draw_set_alpha(1);
draw_set_color(c_white);


