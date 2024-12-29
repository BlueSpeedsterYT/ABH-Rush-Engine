/// @description Remove the lock

	vspeed = 0
	hspeed = 0
	if instance_exists(uiHomingLock)
	{
	    with(uiHomingLock)
	    {
	        instance_destroy()
	    }
	}