/// @description Player Check

	if(!place_meeting(x, y, Player)){
		isActive = true;
	}
	
	if(qteTimer > 0){
		qteTimer -= 1;
		if(qteTimer == 1){
			switch(rampType){
				case "QTE Type 1":
				{
					instance_create_depth(x, y, -100, qteType1);
				}
				break;
				
				case "QTE Type 2":
				{
					instance_create_depth(x, y, -100, qteType2);
				}
				break;
				
				case "QTE Type 3":
				{
					instance_create_depth(x, y, -100, qteType3);
				}
				break;
				
				case "QTE Type 3 (Hard)":
				{
					instance_create_depth(x, y, -100, qteType3Hard);
				}
				break;
				
				case "QTE Type 3 (Expert)":
				{
					instance_create_depth(x, y, -100, qteType3Expert);
				}
				break;
			}
		}
	}