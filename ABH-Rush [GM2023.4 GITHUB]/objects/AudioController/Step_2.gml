/// @description Set Up Loops
	
	// Check if audio has loop points above "0.00"
	if(EndLoop > 0.00)
	{
		// set the loop points
		audio_sound_loop_start(AudioTrack, StartLoop);
		audio_sound_loop_end(AudioTrack, EndLoop);
	}
