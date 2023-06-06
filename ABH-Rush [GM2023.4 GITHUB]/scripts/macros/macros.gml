function macros(){

	// GENERAL GAME DATA
	#macro GameTitle "ABH-Rush Engine"
	#macro GameVersion "V. 1.75"
	#macro GameData global
	#macro GlobalGameWidth 456
	#macro GlobalGameHeight 256
	#macro GameHUD HUDType.Mirai
	#macro GameCamera CameraType.Mirai
	enum CameraType {
		Legacy = 0,
		Mirai = 1,
		Proto = 2
	}
	enum HUDType {
		Legacy = 0,
		Mirai = 1,
		Proto = 2
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
	#macro Background BackgroundController
	#macro Display DisplayController
	#macro Camera CameraController
	#macro Stage StageController
	#macro Goal GoalManager
	#macro XboxRumble XboxRumbleController
	
	// STAGE MACROS
	enum ActType {
		HUB = 0,
		Act1 = 1,
		Act2 = 2,
		Act3 = 3
	}
	#macro StageHUB ActType.HUB
	#macro StageAct1 ActType.Act1
	#macro StageAct2 ActType.Act2
	#macro StageAct3 ActType.Act3
	
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
	#macro PlayerFormHyper 2
	#macro PlayerFormDark 3
	
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
	#macro PlayerActionRollCorkscrew 17
	#macro PlayerActionStomp 18
	#macro PlayerActionStompAlt 18.5
	#macro PlayerActionWallJumpInit 19
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