function rGhostColl(){
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
function rGhostIddle(){
if (conscience = true){
std_Ghost = rGhostC;
}else{
global.Ghost = false;	
if (image_alpha > 0){
x = lerp(x,oHuman.x,0.05);
y = lerp(y,oHuman.y,0.05);
image_alpha = lerp(image_alpha, 0, 0.08);	
}else{
x = oHuman.x;
y = oHuman.y;
y = lerp(y,oHuman.y,0.05);	
}
}
}

function rGhostC(){
image_alpha = lerp(image_alpha, 1, 0.08);
global.Ghost = true;


if (hspd > 0){
dir = 1;
}else if (hspd < 0){
dir = -1;
}





if (covered == false){
if (hspd != 0){
sprite_index = sGhostM;	
}else{
sprite_index = sGhostI;		
}
}else{
if (hspd != 0){
sprite_index = sGhostC;	
}else{
sprite_index = sGhostC;		
}	
}
	
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
jump = keyboard_check(vk_space);	

hspd = (right - left) * spd;
vspd = (down - up) * spd;
	
	
	
	
	
	
rGhostColl()		
	
if (conscience = false){
std_Ghost = rGhostIddle;	
}
	
}