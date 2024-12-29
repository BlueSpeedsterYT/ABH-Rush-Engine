function CameraBoundaries(){

	//Limit bottom
	if(LimitBottom > TargetBottom)
	{
		LimitBottom = CameraY + (Display.GameHeight/2);
		LimitBottom -= 2;
		LimitBottom = max(TargetBottom, LimitBottom);
	}
	
	if(LimitBottom < TargetBottom)
	{
		LimitBottom += 2;
		LimitBottom = min(TargetBottom, LimitBottom);
	}
	
	if(LimitBottom > CameraViewY + Display.GameHeight) LimitBottom = TargetBottom;
	
	//Limit top
	if(LimitTop < TargetTop)
	{
		LimitTop = CameraY - (Display.GameHeight/2);
		LimitTop += 2;
		LimitTop = min(TargetTop, LimitTop);
	}
	
	if(LimitTop > TargetTop)
	{
		LimitTop -= 2;
		LimitTop = max(TargetTop, LimitTop);
	}
	
	if(LimitTop < CameraViewY) LimitTop = TargetTop;
	
	//Limit left
	if(LimitLeft < TargetLeft)
	{
		LimitLeft = CameraX - (Display.GameWidth/2);
		LimitLeft += 2;
		LimitLeft = min(TargetLeft, LimitLeft);
	}
	
	if(LimitLeft > TargetLeft)
	{
		LimitLeft -= 2;
		LimitLeft = max(TargetLeft, LimitLeft);
	}
	
	if(LimitLeft < CameraViewX) LimitLeft = TargetLeft;
	
	//Limit right
	if(LimitRight > TargetRight)
	{
		LimitRight = CameraX + (Display.GameWidth/2);
		LimitRight -= 2;
		LimitRight = max(TargetRight, LimitRight);
	}
	
	if(LimitRight < TargetRight)
	{
		LimitRight += 2;
		LimitRight = min(TargetRight, LimitRight);
	}
	
	if(LimitRight > CameraViewX + Display.GameWidth) LimitRight = TargetRight;

}