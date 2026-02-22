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
visible = true;
std_Ghost = rGhostC;
}else{
x = oHuman.x;
y = oHuman.y;
visible = false;	
}
}

function rGhostC(){


vspd = vspd + grv;
	
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
jump = keyboard_check_pressed(vk_space);	

hspd = (right - left) * spd;

if (jump){
vspd = -6;	
}
	
	
	
	
	
	
rGhostColl()		
	
if (conscience = false){
std_Ghost = rGhostIddle;	
}
	
}