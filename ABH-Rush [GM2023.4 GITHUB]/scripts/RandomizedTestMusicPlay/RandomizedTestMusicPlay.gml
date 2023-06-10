// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RandomizedTestMusicPlay(_TrackID){
	
	var _BGM, _LoopStart, _LoopEnd, _NameBGM, _SourceBGM;
	
	switch(_TrackID){
		case 0:
		{
			_BGM = bgmSonicBattleEmerlTheme;
			_LoopStart = (673792/44100);
			_LoopEnd = (4346134/44100);
			_NameBGM = "EMERL'S THEME";
			_SourceBGM = "SONIC BATTLE";
		}
		break;
		
		case 1:
		{
			_BGM = bgmXenobladeDEFogbeasts;
			_LoopStart = (731136/48000);
			_LoopEnd = (8708236/48000);
			_NameBGM = "FOGBEASTS";
			_SourceBGM = "XENOBLADE CHRONICLES: DEFINITIVE EDITION";
		}
		break;
		
	}
	
	PlayBGM(_BGM, _LoopStart, _LoopEnd);
	SetTitleCardAudioData(_NameBGM, _SourceBGM);

}