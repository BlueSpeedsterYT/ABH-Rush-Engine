/// @description Set Up Loops
	
	// set the loop points
	audio_sound_loop_start(AudioTrack, StartLoop);
	// Check if audio has an end loop point above "0.00"
	if(EndLoop > 0.00)
	{
		audio_sound_loop_end(AudioTrack, EndLoop);
	}
