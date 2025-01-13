/// @description Create a Bridge
	
	NumLogs     = sprite_width/sprite_get_width(BridgeSprite); // Number of logs wich the bridge has
    BridgeWidth = NumLogs*sprite_get_width(BridgeSprite);           
    HalfWidth   = BridgeWidth / 2;   // Half the width of the bridge (GASP)
    MaxTension  = 16;  // Max tension (height) possible
    Logs = [];
	
	//Methods
	CreateNodes = function() {
	    for (var i = 0; i < NumLogs; ++i;)
	    {
	        var _pos_x = (x + i * sprite_get_width(BridgeSprite));
			Logs[i] = {
				LogObject: instance_create_depth(_pos_x, y, depth, objBridgeNode),
				Height: 0
			};
	    }
	}