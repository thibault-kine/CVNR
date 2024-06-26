/// @func getWASDInput()
/// @desc Reads the inputs for a WASD keyboard
function getWASDInput() {
	
	var _xInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var _yInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	
	var _length = sqrt(_xInput * _xInput + _yInput * _yInput);
	if(_length != 0) {
		_xInput /= _length;
		_yInput /= _length;
	}
	
	return {
		"x": _xInput,
		"y": _yInput
	};
}


/// @func getZQSDInput()
/// @desc Reads the inputs for a ZQSD keyboard
function getZQSDInput() {
	var _xInput = keyboard_check(ord("D")) - keyboard_check(ord("Q"));
	var _yInput = keyboard_check(ord("S")) - keyboard_check(ord("Z"));
	
	var _length = sqrt(_xInput * _xInput + _yInput * _yInput);
	if(_length != 0) {
		_xInput /= _length;
		_yInput /= _length;
	}
	
	return {
		"x": _xInput,
		"y": _yInput
	};
}

