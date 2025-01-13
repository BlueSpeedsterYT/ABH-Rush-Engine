function wrap_angle(_angle)
{
	if(_angle < 0)
	{
		_angle += 360;
	}
	else if(_angle >= 360)
	{
		_angle -= 360;
	}
	
	return _angle;
}