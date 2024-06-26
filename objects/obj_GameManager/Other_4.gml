#macro TILESIZE 32

// get tiles in room
var w = ceil(room_width / TILESIZE);
var h = ceil(room_height / TILESIZE);

global.mpGrid = mp_grid_create(
	0, 0,
	w, h,
	TILESIZE, TILESIZE
);

mp_grid_add_instances(
	global.mpGrid,
	obj_Wall,
	false
);