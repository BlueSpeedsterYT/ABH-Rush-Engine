/// @description Reflect this back to the player

	if(QTEDone){
		Player.qteAmount = 1;
		Player.actionCurrent = PlayerActionQTESuccess;
		Player.speedY = -8;
		Player.animIndex = 0;
		TimeValue += 0.5;
		if TimeValue >= QTELimitEnd[0] - 0.5 && TimeValue <= QTELimitStart[0] + 0.5
			CallTrickFinish(2);
		else if TimeValue >= QTELimitEnd[1] - 0.5 && TimeValue <= QTELimitStart[1] + 0.5
			CallTrickFinish(1);
		else if TimeValue >= QTELimitEnd[2] - 0.5 && TimeValue <= QTELimitStart[2] + 0.5
			CallTrickFinish(0);
	}else{
		Player.qteAmount = 1;
		Player.actionCurrent = PlayerActionQTEFailure;
		Player.speedY = -3;
		Player.speedX = Player.animDir*3;
		CallTrickFinish(3);
		Player.animIndex = 0;
	}
	Player.grav = 0.21875;