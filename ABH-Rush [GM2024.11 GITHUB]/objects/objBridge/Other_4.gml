/// @description Create Logs

	BridgeWidth = NumLogs*LogWidth;           
    HalfWidth   = BridgeWidth / 2;   // Half the width of the bridge (GASP)
	
	if(array_length(Logs) == 0)
	{
		self.CreateNodes();
	}
