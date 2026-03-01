y -= -ch_y;
x = ch_x + 16;

if (oBoss.life <= 2001){
image_alpha -= .05;
if (image_alpha <= 0){
instance_destroy();	
}	
}