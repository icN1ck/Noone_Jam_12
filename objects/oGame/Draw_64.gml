if (!begins) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	draw_set_font(Fn1);
	if (alarm[0] <= 15){
	draw_set_alpha(.5);
	}else{
	draw_set_alpha(1);	
	}
    
    draw_text(180 * 3.5, 120 * 4, "APERTE ESPAÇO PARA COMEÇAR");
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
	draw_set_font(-1);
	draw_set_alpha(1);
}

if (win == true){
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	draw_set_font(Fn1);
	if (alarm[0] <= 15){
	draw_set_alpha(.5);
	}else{
	draw_set_alpha(1);	
	}
    
    draw_text(180 * 3.5, 120 * 3, "PARABENS, VOÇE DERROTOU O FANTASMA!!!");
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
	draw_set_font(-1);
	draw_set_alpha(1);
}

draw_text(x,y,global.life)


