/// @description Save and Stop Audio Track

	// check if current track is being played.
	if audio_is_playing(AudioTrack) {
		// save audio track and pos.
		LastAudioTrack = AudioTrack;
		LastAudioPos = audio_sound_get_track_position(AudioTrack);
	
		// then stop the audio immedately
		audio_stop_all();
	}