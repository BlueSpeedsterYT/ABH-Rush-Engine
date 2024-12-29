/// @description Create a Bridge

	NumLogs     = sprite_width/24;                   // Number of logs wich the bridge has
    BridgeWidth = NumLogs*24;           
    HalfWidth   = BridgeWidth / 2;     // Half the width of the bridge (GASP)
    MaxTension  = 16;                   // Max tension (height) possible
    
    for (i=0; i<NumLogs; i+=1)
    {
        Heights[i] = 0;
        Logs[i]    = instance_create_depth(x+i*24, y, 0, objBridgeNode);
    }