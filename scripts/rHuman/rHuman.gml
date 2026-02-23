function rHumanColl(){
    // Colisão Horizontal
    // Verifica se há colisão ao mover horizontalmente
    if place_meeting(x + hspd, y, oWall){
        // Enquanto não houver colisão ao mover na direção do movimento horizontal (hspd)
        while (!place_meeting(x + sign(hspd), y, oWall)){
            x = x + sign(hspd);  // Mover o objeto até a borda do objeto colidido
        }
        hspd = 0;  // Zerar a velocidade horizontal ao colidir
    }
    x = x + hspd;  // Atualiza a posição horizontal do objeto com base na velocidade

    // Colisão Vertical
    // Verifica se há colisão ao mover verticalmente
    if place_meeting(x, y + vspd, oWall){
        // Enquanto não houver colisão ao mover na direção do movimento vertical (vspd)
        while (!place_meeting(x, y + sign(vspd), oWall)){
            y = y + sign(vspd);  // Mover o objeto até a borda do objeto colidido
        }
        vspd = 0;  // Zerar a velocidade vertical ao colidir
    }
    y = y + vspd;  // Atualiza a posição vertical do objeto com base na velocidade	
	
}	

function rHumanIddle(){
if (conscience = true){
std_Human = rHumanC;
}else{
sprite_index = sHumanS;	
}
}

function rHumanC(){

if (sleep == false){	
	
visible = true;	
vspd = vspd + grv;
	
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
jump = keyboard_check_pressed(vk_space);	

hspd = (right - left) * spd;


if (hspd > 0){
dir = 1;
}else if (hspd < 0){
dir = -1;
}






if (hspd != 0){
sprite_index = sHumanM;	
}else{
sprite_index = sHumanI;		
}

if (place_meeting(x,y + 1,oWall)){
if (jump){
for (var i = 0; i < 7; i++){

var _prt = instance_create_layer(x, y, "Inst", oPrt_Jump);
_prt.vspd = -1
}
image_yscale = 0.1;
vspd = -8;	
}
}
image_yscale = lerp(image_yscale, 1, 0.08)
	
	


}else{

visible = false;
	
}
	
rHumanColl();		
	
if (conscience = false){
std_Human = rHumanIddle;	
}
	
}