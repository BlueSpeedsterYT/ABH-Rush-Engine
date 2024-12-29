// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_buttons(_button){

	return _button;

}

function get_button_sprites(){

	var _buttonSprite;

	if(instance_exists(Player)){
		with(Player){
			if(inputType == InputKeyboard){
				_buttonSprite = SetHUDSprite(sprInputKeys, sprInputKeys, sprInputKeysLegacy);
			}else if(inputType == InputXbox){
				_buttonSprite = SetHUDSprite(sprInputXbox, sprInputXbox, sprInputXboxLegacy);
			}
		}
		return _buttonSprite;
	}
	else{
		show_message("[WARNING]\n'PlayerController' not found in the current Stage.\nPlease add it to allow the script to function.");
	}

}

function get_button_height(){

	var _buttonSprite;

	if(instance_exists(Player)){
		with(Player){
			if(inputType == InputKeyboard){
				_buttonSprite = SetHUDSprite(sprInputKeys, sprInputKeys, sprInputKeysLegacy);
			}else if(inputType == InputXbox){
				_buttonSprite = SetHUDSprite(sprInputXbox, sprInputXbox, sprInputXboxLegacy);
			}
			return _buttonSprite.sprite_height;
		}
	}
	else{
		show_message("[WARNING]\n'PlayerController' not found in the current Stage.\nPlease add it to allow the script to function.");
	}

}

function get_button_width(){

	var _buttonSprite;

	if(instance_exists(Player)){
		with(Player){
			if(inputType == InputKeyboard){
				_buttonSprite = SetHUDSprite(sprInputKeys, sprInputKeys, sprInputKeysLegacy);
			}else if(inputType == InputXbox){
				_buttonSprite = SetHUDSprite(sprInputXbox, sprInputXbox, sprInputXboxLegacy);
			}
			return _buttonSprite.sprite_width;
		}
	}
	else{
		show_message("[WARNING]\n'PlayerController' not found in the current Stage.\nPlease add it to allow the script to function.");
	}

}