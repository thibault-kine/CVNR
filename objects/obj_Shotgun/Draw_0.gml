draw_self();

if(data.isReloading) {	
	var barWidth = 50, barHeight = 2;
	var reloadProgress = (data.reloadTime - data.reloadDuration) / data.reloadTime;
	draw_healthbar(
		x - (barWidth / 2), y - 60,
		x + barWidth, y - 60 + barHeight,
		reloadProgress * 100,
		c_dkgray,
		c_orange, c_orange,
		0,
		true, true
	);
	draw_text_transformed_color(
		x - (barWidth / 2), y - 75,
		"Reloading...",
		0.7, 0.7, 0,
		c_orange, c_orange, c_orange, c_orange, 1
	);
}