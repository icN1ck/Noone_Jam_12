rHumanColl();

vspd = vspd + grv;
hspd += ch_spd * ch_hspd;
image_alpha -= ch_alpha;

if (image_alpha <= 0){
instance_destroy();	
}

