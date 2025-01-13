// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FindAngle(_Angle, _HorizontalSpace, _Check){
	var _approx_angle = floor(_Angle);
	var _acos = dcos(_approx_angle);
	var _asin = dsin(_approx_angle);
	var _first_check = false;
	var _second_check = false;

	var _pos_x_1 = round(x - (_acos * _HorizontalSpace));
	var _pos_y_1 = round(y + (_asin * _HorizontalSpace));
	var _pos_x_2 = round(x + (_acos * _HorizontalSpace));
	var _pos_y_2 = round(y - (_asin * _HorizontalSpace));

	var _AllowPlatform = allowGrinding;
	var _AllowRailGrinding = allowGrinding;
	var _AllowWaterRunning = aboveWater;

	while(_Check > 0)
	{
		if(_first_check == false)
		{
			_first_check = ColScriptPoint(_pos_x_1, _pos_y_1, _AllowPlatform, _AllowRailGrinding, _AllowWaterRunning);
			
			_pos_x_1 += _asin;
			_pos_y_1 += _acos;
		}
	
		if(_second_check == false)
		{
			_second_check = ColScriptPoint(_pos_x_2, _pos_y_2, _AllowPlatform, _AllowRailGrinding, _AllowWaterRunning);
			
			_pos_x_2 += _asin;
			_pos_y_2 += _acos;
		}

		if(_first_check && _second_check)
		{
			break;
		}
		else
		{
			_Check--;
		}
	}

	//Return Final Calculated Angle
	var _calculated_angle = point_direction(_pos_x_1, _pos_y_1, _pos_x_2, _pos_y_2);
	return round(_calculated_angle);
}