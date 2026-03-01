// 1. Checa se o primeiro sprite terminou a animação
if (sprite_index == sThorn_Up) { // Substitua 'sThorn' pelo nome do seu sprite inicial
    if (image_index >= image_number - 1) { 
        sprite_index = sThorn_Down;
        image_index = 0; // Reseta para começar o Down do início
    }
}

// 2. Checa se o sprite de "Down" terminou para destruir
if (sprite_index == sThorn_Down) {
    if (image_index >= image_number - 1) {
        instance_destroy();
    }
}