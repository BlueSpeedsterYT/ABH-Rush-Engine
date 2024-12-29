/// @description Reflect this back to the player

	if(QTEDone){
		if(Player.qteAmount < 3){
			Player.qteAmount += 1;
			instance_create_depth(x, y, -100, qteType1);
		}else{
			Player.qteAmount = 1;
			Player.actionCurrent = PlayerActionQTESuccess;
			Player.speedY = -8;
			Player.animIndex = 0;
			Player.grav = 0.21875;
			CallTrickFinish();
		}
	}else{
		Player.qteAmount = 1;
		Player.actionCurrent = PlayerActionQTEFailure;
		Player.speedY = -3;
		Player.speedX = Player.animDir*3;
		Player.grav = 0.21875;
		CallTrickFinish(3);
		Player.animIndex = 0;
	}