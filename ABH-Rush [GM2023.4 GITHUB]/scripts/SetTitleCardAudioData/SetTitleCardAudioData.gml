// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetTitleCardAudioData(_TrackName = "DUMMY", _TrackSource = "DUMMY"){

	if instance_exists(Stage){
		with (Stage){
			TitleBGM = _TrackName;
			SourceBGM = _TrackSource;
		}
	}
	else{
		show_message("[WARNING]\n'StageController' not found in the current Stage.\nPlease add it to allow the script to function.")
	}

}