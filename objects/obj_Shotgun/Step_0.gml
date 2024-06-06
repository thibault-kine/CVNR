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

if(mouse_check_button_pressed(mb_left)) {
	if(data.currentInMag >= data.bulletsPerShot && data.currentInMag != 0) {
		data.currentInMag -= data.bulletsPerShot;
		instance_create_layer(x, y, "Instances", data.bulletObj);
	}
}

if(keyboard_check_pressed(ord(global.keyBindings.reloadKey))) {
	data.reload();	
}