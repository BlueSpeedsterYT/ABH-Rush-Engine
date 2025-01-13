function ColScriptCircle(_PosX, _PosY, _Radius, _PlatformCheck = false, _GrindCheck = false, _WaterCheck = false){

	//Normal
	var _NormalCollision = collision_circle(_PosX, _PosY, _Radius, parWalls, true, true);
	if(_NormalCollision) return true;
		
	//Platforms
	if(_PlatformCheck)
	{
		var _PlatformCollision = collision_circle(_PosX, _PosY, _Radius, parPlatforms, true, true);
		if(_PlatformCollision) return true;
	}
	
	//Rail Grinding (Normal)
	if(_GrindCheck)
	{
		var _RailCollision = collision_circle(_PosX, _PosY, _Radius, parRails, true, true);
		if(_RailCollision) return true;
	}
		
	//Background Layer
	if(characterLayer == 0)
	{
		var _BackgroundCollision = collision_circle(_PosX, _PosY, _Radius, parBGWalls, true, true);
		if(_BackgroundCollision) return true;
	}
	//Foreground Layer
	else if(characterLayer == 1)
	{
		var _ForegroundCollision = collision_circle(_PosX, _PosY, _Radius, parFGWalls, true, true);
		if(_ForegroundCollision) return true;
	}
		
	//Water Running
	if(_WaterCheck)
	{
		var _WaterCollision = collision_circle(_PosX, _PosY, _Radius, parWaterSurface, true, true);
		if(_WaterCollision) return true;
	}
	
	//Return False by default
	return false;

}