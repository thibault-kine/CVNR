x = obj_Player.x;
y = obj_Player.y;

// Calculer la direction de la souris
direction = point_direction(x, y, mouse_x, mouse_y);

// Inverser le sprite sur l'axe Y si la souris est à gauche
if (mouse_x < x) {
    image_yscale = -1;
} else {
    image_yscale = 1;
}

image_angle = direction;

if(timeUntilNextShot > 0) {
	timeUntilNextShot--;
}

if(data.isReloading) {
	data.reloadDuration--;
	if(data.reloadDuration <= 0) {
		data.finishReload();
	}
}

// Tirer si le bouton gauche de la souris est pressé et que l'arme est prête à tirer
if (mouse_check_button_pressed(mb_left) && timeUntilNextShot <= 0 && !data.isReloading) {
    if (data.currentInMag != 0) {
        data.currentInMag--;
        timeUntilNextShot = data.timeBetweenShots; // Réinitialiser le temps entre les tirs
        instance_create_layer(x, y, "Instances", data.bulletObj);
    }
}

// Recharger si la touche de rechargement est pressée
if (keyboard_check_pressed(ord(global.keyBindings.reloadKey))) {
    data.reload(); // Commencer le rechargement
}