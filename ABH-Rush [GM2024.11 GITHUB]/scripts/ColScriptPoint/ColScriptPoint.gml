function ColScriptPoint(_PosX, _PosY, _PlatformCheck = false, _GrindCheck = false, _WaterCheck = false){

	//Normal
	var _NormalCollision = collision_point(_PosX, _PosY, parWalls, true, true);
	if(_NormalCollision) return true;
		
	//Platforms
	if(_PlatformCheck)
	{
		var _PlatformCollision = collision_point(_PosX, _PosY, parPlatforms, true, true);
		if(_PlatformCollision) return true;
	}
	
	//Rail Grinding (Normal)
	if(_GrindCheck)
	{
		var _RailCollision = collision_point(_PosX, _PosY, parRails, true, true);
		if(_RailCollision) return true;
	}
		
	//Background Layer
	if(characterLayer == 0)
	{
		var _BackgroundCollision = collision_point(_PosX, _PosY, parBGWalls, true, true);
		if(_BackgroundCollision) return true;
	}
	//Foreground Layer
	else if(characterLayer == 1)
	{
		var _ForegroundCollision = collision_point(_PosX, _PosY, parFGWalls, true, true);
		if(_ForegroundCollision) return true;
	}
		
	//Water Running
	if(_WaterCheck)
	{
		var _WaterCollision = collision_point(_PosX, _PosY, parWaterSurface, true, true);
		if(_WaterCollision) return true;
	}
	
	//Return False by default
	return false;

}