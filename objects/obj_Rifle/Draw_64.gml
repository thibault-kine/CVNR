var ammoText = 
	string(data.currentInMag) + "/" + string(data.magSize);

var maxAmmoText = 
	"| " + string(data.currentAmmo);

draw_text_transformed(
	getPercentage(0, room_width), getPercentage(95, room_height),
	ammoText,
	2, 2, 0
);
draw_text(
	getPercentage(5, room_width), getPercentage(97, room_height),
	maxAmmoText
);