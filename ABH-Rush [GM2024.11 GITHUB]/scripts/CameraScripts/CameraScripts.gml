function DelayCamera(_TimeUntilEnd){

	if(instance_exists(Camera))
	{
		with(Camera)
		{
			if(CamDelay < _TimeUntilEnd)
			{
				CamDelay = _TimeUntilEnd;
			}
		}
	}
	else
	{
		show_message("[WARNING]\n'CameraController' not found in the current Stage.\nPlease add it to allow the script to function.")
	}

}

function ShakeCamX(_TimeUntilEnd){

	if(instance_exists(Camera))
	{
		with(Camera)
		{
			CamShakeX = _TimeUntilEnd;
		}
	}
	else
	{
		show_message("[WARNING]\n'CameraController' not found in the current Stage.\nPlease add it to allow the script to function.")
	}

}

function ShakeCamY(_TimeUntilEnd){

	if(instance_exists(Camera))
	{
		with(Camera)
		{
			CamShakeY = _TimeUntilEnd;
		}
	}
	else
	{
		show_message("[WARNING]\n'CameraController' not found in the current Stage.\nPlease add it to allow the script to function.")
	}

}