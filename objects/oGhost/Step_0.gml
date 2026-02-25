event_inherited();
script_execute(std_Ghost);	
meu_xscale = lerp(meu_xscale, dir, 0.1);

if (place_meeting(x, y, oCam_Quartin)) {
    view_visible[0] = false;
    view_visible[1] = true;  // LIGA QUARTINHO
    view_visible[2] = false;
	oFundo.visible = false;
} 
else if (place_meeting(x, y, oCam_Refeitorio)) {
    view_visible[0] = false;
    view_visible[1] = false;
    view_visible[2] = true;  // LIGA REFEITORIO
	oFundo.visible = true;
} 
else {
    view_visible[0] = true;  // LIGA PRINCIPAL (QUANDO TÁ FORA DE TUDO)
    view_visible[1] = false;
    view_visible[2] = false;
	oFundo.visible = false;
}


