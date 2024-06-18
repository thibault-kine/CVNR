draw_self();

var barWidth = 50, barHeight = 5;
draw_healthbar(
	x - (barWidth / 2), y - 55,
	x + barWidth, y - 55 + barHeight,
	health * 100,
	c_dkgray,
	c_lime, c_lime,
	0,
	true, true
);