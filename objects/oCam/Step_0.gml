if (oGhost.conscience == true){
target = oGhost;	
}else{
target = oHuman;	
}

// 1. Define o quão suave é o movimento (0.1 = 10% por frame)
var _suavidade = 0.1;

// 2. Calcula a posição alvo (onde o centro deve estar)
var _alvo_x = target.x;
var _alvo_y = target.y;

// 3. Aplica o LERP para mover o objeto oCam suavemente
x = lerp(x, _alvo_x, _suavidade);
y = lerp(y, _alvo_y, _suavidade);

// 4. Pega as dimensões da câmera atual
var _cam = view_camera[0];
var _cam_w = camera_get_view_width(_cam);
var _cam_h = camera_get_view_height(_cam);

// 5. ATUALIZA A CÂMERA: Subtraímos metade do tamanho para centralizar
// Em vez de colocar o CANTO no X/Y, colocamos o CENTRO.
camera_set_view_pos(_cam, x - (_cam_w / 2), y - (_cam_h / 2));