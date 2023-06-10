// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function linear_interpolate(_Point1, _Point2, _Time){

	return _Point1+(_Point2-_Point1)*_Time;

}