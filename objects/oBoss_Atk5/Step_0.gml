y -= -ch_y;
x = ch_x;

if (oBoss.life <= 1){
image_alpha -= .05;
if (image_alpha <= 0){
instance_destroy();	
}	
}