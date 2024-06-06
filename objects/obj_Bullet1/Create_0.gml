target = {
	"x": mouse_x,
	"y": mouse_y
}

direction = point_direction(x, y, target.x, target.y);
speed = 10;

damage = obj_WeaponManager.currWpn.damage;