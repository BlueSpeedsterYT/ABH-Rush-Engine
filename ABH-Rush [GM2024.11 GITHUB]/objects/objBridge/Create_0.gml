/// @description Create a Bridge
	
	NumLogs     = image_xscale; // Number of logs wich the bridge has
	LogWidth = sprite_get_width(BridgeSprite);
    BridgeWidth = NumLogs*LogWidth;           
    HalfWidth   = BridgeWidth / 2;   // Half the width of the bridge (GASP)
    MaxTension  = 14;  // Max tension (height) possible
    Logs = [];
	
	//Methods
	CreateNodes = function() {
	    for (var i = 0; i < NumLogs; ++i;)
	    {
	        var _pos_x = (x + i * LogWidth);
			Logs[i] = {
				LogObject: instance_create_depth(_pos_x, y, depth, objBridgeNode),
				Height: 0
			};
			Logs[i].LogObject.sprite_index = BridgeSprite;
	    }
	}