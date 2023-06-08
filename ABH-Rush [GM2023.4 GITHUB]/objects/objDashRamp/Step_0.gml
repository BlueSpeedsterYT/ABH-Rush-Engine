/// @description Player Check

	if(!place_meeting(x, y, Player)){
		isActive = true;
	}
	
	if(qteTimer > 0){
		qteTimer -= 1;
		if(qteTimer == 1){
			switch(rampType){
				case 0:
				{
					qteObject.QTEType = -1;
				}
				break;
				
				case 1:
				{
					qteObject.QTEType = 1;
				}
				break;
				
				case 2:
				{
					qteObject.QTEType = 2;
				}
				break;
				
				case 3:
				{
					qteObject.QTEType = 3;
				}
				break;
				
				case 3.1:
				{
					qteObject.QTEType = 3.1;
				}
				break;
				
				case 3.2:
				{
					qteObject.QTEType = 3.2;
				}
				break;
			}
		}
	}