x -= -ch_x;
y = ch_y;

if (oBoss.life <= 1001){
image_alpha -= .05;
if (image_alpha <= 0){
instance_destroy();	
}	
}