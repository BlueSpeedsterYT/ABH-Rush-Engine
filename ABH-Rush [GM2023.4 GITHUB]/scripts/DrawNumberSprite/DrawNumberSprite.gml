// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawNumberSprite(_X, _Y, _String, _Sprite, _Alpha){

	var _NumLayout, _OffsetX, _OffsetY, i;
	_NumLayout = "0123456789:."

	if (!variable_global_exists("__NumMap"))
	{
	    for(i = 0; i <= 255; i+=1)
	        global.__NumMap[i] = -1
    
	    for(i = 1; i <= string_length(_NumLayout); i+=1)
	        global.__NumMap[ord(string_char_at(_NumLayout,i))] = i
	}

	_OffsetX = 0;
	_OffsetY = 0;

	for(i = 1; i <= string_length(_String); i+= 1)
	{
	    var c
	    c = ord(string_char_at(_String,i))
    
	    if (global.__NumMap[c] != -1)
	        draw_sprite_ext(_Sprite, global.__NumMap[c] - 1,_X+_OffsetX,_Y+_OffsetY,1,1,0,c_white,_Alpha)
	    _OffsetX += sprite_get_width(_Sprite)
	}

}