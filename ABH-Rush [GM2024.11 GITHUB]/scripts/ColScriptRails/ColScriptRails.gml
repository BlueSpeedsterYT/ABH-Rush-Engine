function ColScriptRails(_Mask){
	//Declare Variables
	var pos_x = x + asin * _Mask;
	var pos_y = y + acos * _Mask;
	var _radius = 8;
	
	// Determine Collision on 'parRails'
	var _NormalRailCollision = collision_circle(pos_x, pos_y, _radius, parRails, true, true);
	if (_NormalRailCollision) then return true;
		
	// Determine Collision on 'parRails', following the current player layer
	if (characterLayer == 1) {
        //var _FGRailCollision = collision_circle(pos_x, pos_y, _radius, obj_riel_frontal, true, true);
		//if (_FGRailCollision) then return true;
    } else {
        //var _BGRailCollision = collision_circle(pos_x, pos_y, _radius, obj_riel_posterior, true, true);
		//if (_BGRailCollision) then return true;
    }

	// In case of a lack of collision, return false.
	return false;
}