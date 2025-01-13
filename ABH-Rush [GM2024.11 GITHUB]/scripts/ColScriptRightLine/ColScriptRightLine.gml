// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ColScriptRightLine(_Mask){
	var _line_length = floor(_Mask * 3.5);
	var _mask_with_acos = acos * _Mask;
	var _mask_with_asin = asin * _Mask;
	var _distance_with_acos = acos * _line_length;
	var _distance_with_asin = asin * _line_length;
	
	var pos_x_1 = x + _mask_with_acos + _mask_with_asin;
	var pos_y_1 = y - _mask_with_asin + _mask_with_acos;
	var pos_x_2 = x + _mask_with_acos + _distance_with_asin;
	var pos_y_2 = y - _mask_with_asin + _distance_with_acos;
	
	var _AllowPlatform = allowGrinding;
	var _AllowRailGrinding = allowGrinding;
	var _AllowWaterRunning = aboveWater && !isUnderwater;

	return ColScriptLineGeneral(pos_x_1, pos_y_1, pos_x_2, pos_y_2, _AllowPlatform, _AllowRailGrinding, _AllowWaterRunning);
}