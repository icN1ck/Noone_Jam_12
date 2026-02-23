// 1. Variáveis de estado
var _conscience = oGhost.conscience;
var _covered    = oGhost.covered;
var _sleeping   = oHuman.sleep;

// 2. Lógica de decisão (Nova Prioridade)
if (_sleeping) {
    // Se o humano deitou, o sprite é Bed_H, não importa se o fantasma tá consciente ou não
    sprite_index = sBed_H;
} 
else if (_covered) {
    // Se não tem humano, mas a cama está coberta pelo fantasma
    sprite_index = sBedC;
} 
else {
    // Cama vazia e descoberta
    sprite_index = sBed;
}