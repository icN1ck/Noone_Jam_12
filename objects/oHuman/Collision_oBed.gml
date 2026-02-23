// Agrupando as condições lógicas
if (!oGhost.conscience && !oGhost.covered) {
    if (keyboard_check_pressed(ord("J"))) {
        sleep = !sleep;
    }
}