var _input = global.keyBindings.isWASD ? getWASDInput() : getZQSDInput();
move_and_collide(
	_input.x * moveSpeed,
	_input.y * moveSpeed,
	obj_Wall
);

