function macros(){

	// GENERAL GAME DATA
	#macro GameTitle "ABH-Rush Engine"
	#macro GameVersion "V. 1.75"
	#macro GameData global
	#macro GlobalGameWidth 400
	#macro GlobalGameHeight 270
	#macro GameHUD StyleEnum.Proto
	#macro GameCamera StyleEnum.Mirai
	enum StyleEnum {
		Legacy,
		Mirai,
		Proto,
		TOTAL_STYLES
	}
	
	// GAME CONTROL DATA
	#macro InputKeyboard 0
	#macro InputXbox 1
	
	// GAME VIEW DATA
	#macro CameraViewID view_camera[0]
	#macro CameraViewX	camera_get_view_x(CameraViewID)
	#macro CameraViewY	camera_get_view_y(CameraViewID)
	#macro CameraViewWidth camera_get_view_width(CameraViewID)
	#macro CameraViewHeight camera_get_view_height(CameraViewID)
	
	// OBJECT MACROS
	#macro Player PlayerController
	#macro Audio AudioController
	#macro Display DisplayController
	#macro Camera CameraController
	#macro Stage StageController
	#macro QTEResult QTEMessageController
	#macro Goal GoalManager
	#macro XboxRumble XboxRumbleController
	
	// STAGE MACROS
	enum ActType {
		HUB = 0,
		Act1 = 1,
		Act2 = 2,
		Act3 = 3,
		TOTAL_ACTS
	}
	
	enum MissionType {
		Main = 0,
		Mission1 = 1,
		Mission2 = 2,
		Mission3 = 3,
		TOTAL_MISSIONS
	}
	
	enum StageVersion {
		Normal = 0,
		EX = 1,
		TOTAL_STAGE_VERSIONS
	}
	
	#macro StageHUB ActType.HUB
	#macro StageAct1 ActType.Act1
	#macro StageAct2 ActType.Act2
	#macro StageAct3 ActType.Act3
	#macro StageMissionMain MissionType.Main
	#macro StageMission1 MissionType.Mission1
	#macro StageMission2 MissionType.Mission2
	#macro StageMission3 MissionType.Mission3
	#macro StageNormal StageVersion.Normal
	#macro StageEX StageVersion.EX
	
	// PLAYER ID MACROS
	#macro PlayerSonic "Sonic"
	#macro PlayerShadow "Shadow"
	#macro PlayerTails "Tails"
	
	// PLAYER START TYPE MACROS
	#macro PlayerStartIdle 0
	#macro PlayerStartReadyGo 1
	#macro PlayerStartRun 2
	
	// PLAYER FORM MACROS
	#macro PlayerFormNormal 0
	#macro PlayerFormSuper 1
	#macro PlayerFormHyper 2 //(this is an example of an additional form beyond Super Sonic)
	
	// PLAYER END OF STAGE TYPE MACROS
	#macro PlayerClearRush 0
	#macro PlayerClearUnleashed 1
	#macro PlayerClearColors 2
	#macro PlayerClearFrontiers 3 //(you can tell this is recent by how *this* is here)
	
	// PLAYER ACTION ID MACROS
	#macro PlayerActionSkid -4
	#macro PlayerActionLookUp -3
	#macro PlayerActionSpinCharge -2
	#macro PlayerActionLookDown -1
	#macro PlayerActionNormal 0
	#macro PlayerActionJump 1
	#macro PlayerActionRoll 2
	#macro PlayerActionHomingTarget 4
	#macro PlayerActionHomingNoTarget 4.5
	#macro PlayerActionSpring 5
	#macro PlayerActionDashRing 6
	#macro PlayerActionDashRamp 7
	#macro PlayerActionDashPad 8
	#macro PlayerActionSlide 9
	#macro PlayerActionTrick 10
	#macro PlayerActionGrind 11
	#macro PlayerActionSwing 12
	#macro PlayerActionSwingJump 13
	#macro PlayerActionQTEInit 14
	#macro PlayerActionQTESuccess 15
	#macro PlayerActionQTEFailure 15.5
	#macro PlayerActionCorkscrew 16
	#macro PlayerActionRailCorkscrew 16.5
	#macro PlayerActionRollCorkscrew 17
	#macro PlayerActionStomp 18
	#macro PlayerActionStompShadow 18.5
	#macro PlayerActionWallHang 19
	#macro PlayerActionWallJump 20
	#macro PlayerActionCannon 21
	#macro PlayerActionDamage 22
	#macro PlayerActionLightDash 23
	#macro PlayerActionPanelJump 24
	#macro PlayerActionPanelLand 25
	#macro PlayerActionDead 26
	#macro PlayerActionPulley 27
	#macro PlayerActionChaosControl 28
	#macro PlayerActionPole 29
	#macro PlayerActionBungee 30
	#macro PlayerActionTransform 31
	#macro PlayerActionZipStart 32
	#macro PlayerActionZipTravel 32.5
	#macro PlayerActionPull 33
	#macro PlayerActionAutoroll 34

}