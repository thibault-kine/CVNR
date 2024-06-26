var _debugText = 
	"x: " + string(obj_Player.x) + "\n" +
	"y: " + string(obj_Player.y) + "\n" + 
	"moveSpeed: " + string(obj_Player.moveSpeed) + "\n" +
	"health: " + string(health) + "\n" +
	"obj_BulletPickup spawning in: " + string(alarm_get(0)) + "\n";
	
	
draw_text_color(
	5, 5,
	_debugText,
	c_lime, c_lime, c_lime, c_lime, 1
);