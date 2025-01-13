function ConScriptLineSimple(_Mask, _Surface){
	//Define Variables
	var pos_x_1 = x;
	var pos_y_1 = y;
	var pos_x_2 = x + (asin * _Mask)
	var pos_y_2 = y + (acos * _Mask)
	
	//Return Call
	return collision_line(pos_x_1, pos_y_1, pos_x_2, pos_y_2, _Surface, true, true);
}

function ColScriptLineGeneral(_PosX1, _PosY1, _PosX2, _PosY2, _PlatformCheck = false, _GrindCheck = false, _WaterCheck = false){

	//Special Rail Grinding Variables
	var _RailAngleHorizontal = lengthdir_y(8, angle);
	var _RailAngleVertical = lengthdir_y(8, angle-90);

	//Normal
	var _NormalCollision = collision_line(_PosX1, _PosY1, _PosX2, _PosY2, parWalls, true, true);
	if(_NormalCollision) return true;
		
	//Platforms
	if(_PlatformCheck)
	{
		var _PlatformCollision = collision_line(_PosX1 + _RailAngleHorizontal, _PosY1 - _RailAngleVertical, _PosX2, _PosY2, parPlatforms, true, true);
		if(_PlatformCollision) return true;
	}
	
	//Rail Grinding (Normal)
	if(_GrindCheck)
	{
		var _RailCollision = collision_line(_PosX1 + _RailAngleHorizontal, _PosY1 - _RailAngleVertical, _PosX2, _PosY2, parRails, true, true);
		if(_RailCollision) return true;
	}
		
	//Background Layer
	if(characterLayer == 0)
	{
		var _BackgroundCollision = collision_line(_PosX1, _PosY1, _PosX2, _PosY2, parBGWalls, true, true);
		if(_BackgroundCollision) return true;
	}
	//Foreground Layer
	else if(characterLayer == 1)
	{
		var _ForegroundCollision = collision_line(_PosX1, _PosY1, _PosX2, _PosY2, parFGWalls, true, true);
		if(_ForegroundCollision) return true;
	}
		
	//Water Running
	if(_WaterCheck)
	{
		var _WaterCollision = collision_line(_PosX1, _PosY1, _PosX2, _PosY2, parWaterSurface, true, true);
		if(_WaterCollision) return true;
	}
	
	//Return False by default
	return false;

}