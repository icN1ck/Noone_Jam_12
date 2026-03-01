draw_self();
//draw_text(x,y-45,life);
if (place_meeting(x,y,oDamage)){
gpu_set_fog(true, c_white, 0, 0);	
draw_self()
gpu_set_fog(false, c_white, 0, 0);
}else{
draw_self();	
}

draw_text(x,y-50,life);
