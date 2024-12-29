/// @description Set up QTE Message Code

	if(QTEMessage != 3){
		if(QTEMessageTimer > 0){
			QTEMessageTimer -= 1;
			if(QTEMessageTimer == 1){
				QTEMessageAnimID = 2;
			}
		}
		if QTEMessageAnimID == 0 && QTEMessageAlpha < 1
		    QTEMessageAlpha += 0.125;
		else if QTEMessageAnimID == 0 && QTEMessageAlpha >= 1
		{    
		    QTEMessageAnimID = 1;
		    QTEMessageTimer = 61;
		}

		if QTEMessageAnimID == 2 && QTEMessageAlpha > 0
		{
		    QTEMessageAlpha -= 0.120;
			QTEMessageXScale += 0.120;
		    QTEMessageYScale += 0.120;
		}
		else if QTEMessageAnimID == 2 && QTEMessageAlpha == 0
		{
		    instance_destroy();
		}
	}else if(QTEMessage == 3){
		if(QTEMessageTimer > 0){
			QTEMessageTimer -= 1;
			if(QTEMessageTimer == 1){
				QTEMessagePause = false;
			}
		}
		if QTEMessagePause 
		{
		    if QTEMessageAlpha < 1
		        QTEMessageAlpha += 0.25;
		    else if QTEMessageAlpha >= 1 && !QTEMessageAnimCheck  
		    {
		        QTEMessageTimer = 31;
		        QTEMessageAnimCheck = true;
		    }
		}    
		else
		{
		    if QTEMessageAlpha > 0
		    {
		        QTEMessageAlpha -= 0.0625;
		        QTEMessageXScale += 0.0125;
		        QTEMessageYScale += 0.0125;
		    }
		    else
		        instance_destroy();
		}
	}
