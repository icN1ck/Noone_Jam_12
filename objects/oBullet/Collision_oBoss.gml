speed = 0;
x = x;
y = y;

image_xscale += 0.01;
image_yscale += 0.01;

image_alpha -= ch_alpha;

instance_create_layer(x,y,"Inst",oDamage);

if (image_alpha <= 0){
instance_destroy();	
}
