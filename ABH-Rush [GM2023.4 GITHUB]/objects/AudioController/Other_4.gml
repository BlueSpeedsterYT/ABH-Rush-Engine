/// @description Init Audio System

	// check if audio track is the same as the previous room.
	if AudioTrack == LastAudioTrack {
		// reset it's position to how it was pre "audio_stop_sound"
		audio_sound_set_track_position(AudioTrack, LastAudioPos);
	}
	else{ // if track is not the same
		// reset it.
		LastAudioTrack = noone;
		LastAudioPos = -1;
	}