var _debugText = 
	"x: " + string(obj_Player.x) + "\n" +
	"y: " + string(obj_Player.y) + "\n" + 
	"moveSpeed: " + string(obj_Player.moveSpeed) + "\n" +
	"health: " + string(health) + "\n" +
	"currentWpn: " + obj_WeaponManager.currWpn.weaponName + "\n" +
	"mousePos: (" + string(mouse_x) + ", " + string(mouse_y) + ")\n" +
	"reloading: " + string(obj_WeaponManager.currWpn.reloadDuration) + " / " + string(obj_WeaponManager.currWpn.reloadTime) + "\n";
	
	
draw_text_color(
	5, 5,
	_debugText,
	c_lime, c_lime, c_lime, c_lime, 1
);