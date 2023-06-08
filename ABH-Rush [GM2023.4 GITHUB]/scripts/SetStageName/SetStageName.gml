// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetStageName(_StageTitle = "Stage Title", _StartType = PlayerStartIdle, _StageMission = "Mission Name", _StageAct = StageAct1, _StageType = StageNormal){
	
	if instance_exists(Stage){
		with (Stage){
			StageTitle = _StageTitle;
			StartType = _StartType;
			StageMission = _StageMission;
			StageAct = _StageAct;
			StageType = _StageType;
		}
	}
	else{
		show_message("[WARNING]\n'StageController' not found in the current Stage.\nPlease add it to allow the script to function.")
	}

}