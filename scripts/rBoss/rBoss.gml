function rBossFalse() {
    if (oGame.begins) {
        std = rBossAtk1;
        alarm[3] = 1800; // Define a duração do ataque 1 aqui (uma vez só)
    }
}

function rBossAtk1() {
    oGhost.conscience = true;
    oHuman.conscience = false;
    sprite_index = sBoss_Atk;
    visible = true;

    // Ataque de tiros
    if (alarm[1] <= 0) {
        alarm[1] = 15;
        instance_create_layer(x, y, "Inst", oBoss_Atk1);
    }

    // Só muda pro puzzle se a vida cair pra 2001 OU o tempo (alarm 3) acabar
    if (life <= 2001 || alarm[3] <= 0) {
        std = rBoss_Puzzle1;
        alarm[0] = 90;   // Prepara os espinhos
        alarm[3] = 1800; // Define quanto tempo o puzzle dura
    }
}

function rBoss_Puzzle1() {
    oGhost.conscience = false;
    oHuman.conscience = true;
    sprite_index = sBoss_Idle;
    visible = false;

    if (alarm[0] <= 0) {
        instance_create_layer(x, y, "Inst", oThorn);
        alarm[0] = 90;
    }

    // Quando o tempo do puzzle acaba, vai pro Atk2
    if (alarm[3] <= 0) {
        std = rBossAtk2;
        alarm[3] = 1800; 
    }
}

function rBossAtk2() {
    oGhost.conscience = true;
    oHuman.conscience = false;
    sprite_index = sBoss_Atk;
    visible = true;

    if (alarm[2] <= 0) {
        alarm[2] = 30;
        instance_create_layer(x, y, "Inst", oBoss_Atk2);
    }

    // Transição pro Puzzle 2 quando chegar em 1001 de vida
    if (life <= 1001 || alarm[3] <= 0) {
        std = rBoss_Puzzle2;
        alarm[4] = 60;   
        alarm[3] = 1800; 
    }
}

function rBoss_Puzzle2() {
    oGhost.conscience = false;
    oHuman.conscience = true;
    sprite_index = sBoss_Idle;
    visible = false;

    if (alarm[4] <= 0) {
        alarm[4] = 60;
        var _buffering = (oHuman.hspd != 0) ? 10 : 0;
        instance_create_layer(oHuman.x + (_buffering * oHuman.dir), room_height - 32, "Inst", oThorn_Up);
    }

    if (alarm[3] <= 0) {
        std = rBossAtk3;
        alarm[3] = -1; // Desativa o timer pro boss final ser só na porrada
    }
}

function rBossAtk3() {
    oGhost.conscience = true;
    oHuman.conscience = false;
    sprite_index = sBoss_Atk;
    visible = true;

    if (alarm[2] <= 0) {
        alarm[2] = 30;
        if (life >= 500) {
            instance_create_layer(x, y, "Inst", oBoss_Atk3);
            instance_create_layer(x, y, "Inst", oBoss_Atk4);
        } else {
            instance_create_layer(x, y, "Inst", oBoss_Atk5);
            instance_create_layer(x, y, "Inst", oBoss_Atk6);
        }
    }

    if (life <= 1) {
        std = rBossDeath;
    }
}

function rBossDeath() {
    if (keyboard_check_pressed(ord("K"))) {
        oHuman.conscience = !oHuman.conscience;
        oGhost.conscience = !oGhost.conscience;
    }

    if (!audio_is_playing(snd_MusicWin)) {
        var _inst = audio_play_sound(snd_MusicWin, 1, false);
        audio_sound_pitch(_inst, random_range(0.9, 1.1));
    }

    oGame.win = true;
    sprite_index = sBoss_Idle;
    y += 1;
}