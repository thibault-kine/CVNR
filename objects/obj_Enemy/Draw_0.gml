draw_self();

draw_path(path, x, y, 0);
draw_text(x, y - 80, string(hp));
draw_circle_color(
	x, y,
	alertRadius,
	c_orange, c_orange,
	true
);