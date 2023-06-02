// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StringNumberZero(_Number, _Length){

	var _StringNum, _StringZero;
	_StringNum = string(_Number);
	_StringZero = "";
	
	for (var i = 0; i < _Length-string_length(_StringNum); ++i) {
	    _StringZero = _StringZero + "0";
	}
	
	return (_StringZero+_StringNum)

}