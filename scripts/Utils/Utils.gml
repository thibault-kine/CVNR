/// @desc							Executes the json parsing funcion with the given file
/// @param {String}		jsonFile	The path to the file content to parse
/// @param {Function}	func		The function to work with
function parseJsonFromFile(jsonFile, func) {
	if(file_exists(jsonFile)) {
		var _file, _jsonString;
		_file = file_text_open_read(jsonFile);
		_jsonString = "";
		while(!file_text_eof(_file)) {
			_jsonString += file_text_read_string(_file);
			file_text_readln(_file);
		}
		file_text_close(_file);
		return script_execute(func, _jsonString);
	}
	return undefined;
}

/// @desc						Because using show_debug_message() was just too tiresome
/// @param {String}		msg		The message to print in console
function print(msg) {
	show_debug_message(msg);	
}

/// @desc						Returns an amount according to the percentage
/// @param {Real}	percent		The percentage to get from the amount
/// @param {Real}	amount		The total
/// @return {Real}
function getPercentage(percent, amount) {
	return (percent * amount) / 100;	
}

/// @desc						Returns wether or not an element exists in a DSList
/// @param {Id.DsList}	dsList	The DSList to search through
/// @param {Any}		obj		The element to search for
/// @return {Bool}
function isInList(dsList, obj) {
	var res = false;
	for(var i = 0; i < ds_list_size(dsList); i++) {
		if(ds_list_find_value(dsList, i) == obj) {
			res = true;
			exit;
		}
	}
	return res;
}