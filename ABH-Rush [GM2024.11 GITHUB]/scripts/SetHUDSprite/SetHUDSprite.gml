// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetHUDSprite(_miraiSprite, _protoSprite, _legacySprite){

	if instance_exists(Stage){
		with (Stage){
			switch(StageHUDType){
				case StyleEnum.Mirai:
				{
					return _miraiSprite;
				}
				break;
				
				case StyleEnum.Proto:
				{
					return _protoSprite;
				}
				break;
				
				case StyleEnum.Legacy:
				{
					return _legacySprite;
				}
				break;
			}
		}
	}
	else{
		show_message("[WARNING]\n'StageController' not found in the current Stage.\nPlease add it to allow the script to function.")
	}

}