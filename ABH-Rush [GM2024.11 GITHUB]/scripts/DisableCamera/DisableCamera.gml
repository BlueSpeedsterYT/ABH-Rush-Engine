// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DisableCamera(_TimeUntilReEnable){

	if(instance_exists(Camera))
	{
		with(Camera)
		{
			CamFollow = false;
			CamFollowTimer = _TimeUntilReEnable;
		}
	}
	else
	{
		show_message("[WARNING]\n'CameraController' not found in the current Stage.\nPlease add it to allow the script to function.")
	}

}