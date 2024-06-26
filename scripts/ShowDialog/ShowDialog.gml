/// @func	showDialog(text)
/// @desc	Displays a textbox at the bottom of the screen, which displays @arg[0]
/// @arg	{String} text The message you want to display. Defaults to "Hello World"
function showDialog(text = "Hello World") {
	var _boxHeight = 150;
	var _boxY = room_height - _boxHeight;
	
	var _maxTextWidth = room_width - 20;
	var _words = string_split(text, " ");
	var _currLine = "";
	var _finalText = "";
	
	for(var i = 0; i < array_length(_words); i++) {
		var _word = _words[i];
		var _wordWidth = string_width(_currLine + " " + _word);
		if(_wordWidth > _maxTextWidth) {
			_finalText += _currLine + "\n";
			_currLine = "";
		}
		
		_currLine += (_currLine == "" ? "" : " ") + _word;
	}
	_finalText += _currLine;
	
	draw_sprite_stretched(
		spr_textbox, -1,
		0, _boxY,
		room_width, _boxHeight
	);
	draw_text_color(
		10, _boxY + 7,
		_finalText,
		c_lime, c_lime, c_lime, c_lime,
		1
	);
}