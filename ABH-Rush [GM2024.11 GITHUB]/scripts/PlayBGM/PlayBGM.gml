// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayBGM(_BGM, _StartLoop = 0.00, _EndLoop = 0.00, _Loop = true){
	
	if instance_exists(Audio){
		with (Audio){
			AudioTrack = audio_play_sound(_BGM, 0, _Loop);
			StartLoop = _StartLoop;
			EndLoop = _EndLoop;
		}
	}
	else{
		show_message("[WARNING]\n'AudioController' not found in the current Stage.\nPlease add it to allow the script to function.")
	}

}