// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_buttons(_x, _y, _button){

	var _buttonSprite;

	if(instance_exists(Player)){
		with(Player){
			if(inputType == InputKeyboard){
				_buttonSprite = SetHUDSprite(sprInputKeys, sprInputKeys, sprInputKeysLegacy);
			}else if(inputType == InputXbox){
				_buttonSprite = SetHUDSprite(sprInputXbox, sprInputXbox, sprInputXboxLegacy);
			}
		}

		draw_sprite(_buttonSprite, _button, _x, _y);
	}
	else{
		show_message("[WARNING]\n'PlayerController' not found in the current Stage.\nPlease add it to allow the script to function.");
	}

}

function draw_buttons_ext(_x, _y, _button, _alpha, _xscale, _yscale){

	var _buttonSprite;

	if(instance_exists(Player)){
		with(Player){
			if(inputType == InputKeyboard){
				_buttonSprite = SetHUDSprite(sprInputKeys, sprInputKeys, sprInputKeysLegacy);
			}else if(inputType == InputXbox){
				_buttonSprite = SetHUDSprite(sprInputXbox, sprInputXbox, sprInputXboxLegacy);
			}
		}

		draw_sprite_ext(_buttonSprite, _button, _x, _y, _xscale, _yscale, 0, c_white, _alpha);
	}
	else{
		show_message("[WARNING]\n'PlayerController' not found in the current Stage.\nPlease add it to allow the script to function.");
	}

}