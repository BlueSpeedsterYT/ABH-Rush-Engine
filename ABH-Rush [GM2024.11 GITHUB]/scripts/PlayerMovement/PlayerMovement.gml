// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerMovement(){

	// [SONIC AND SHADOW ONLY] Boost Activation:
	BoostActivation();

	// General Character Movement:
	GroundMovement();
	
	// Jumping and Landing:
	JumpLand();
	
	// Ducking and Rolling:
	DuckRoll();
	
	// Look Up:
	LookUp();
	
	// Spindash:
	Spindash();
	
	// [SONIC AND SHADOW ONLY] Homing Attack:
	HomingAttack();
	
	// Spring Jump & Dash Ring:
	SpringJumpDashRing();
	
	// Dash Ramp:
	DashRamp();
	
	// Dash Pad:
	DashPad();
	
	// [SONIC AND SHADOW ONLY] Slide Attack:
	SlideAttack();
	
	// Grinding:
	Grinding();
	
	// QTE System:
	QTESystem();
	
	// Corkscrew:
	Corkscrew();
	
	// [SONIC AND SHADOW ONLY] Stomp Attack:
	StompAttack();
	
	// Four Way Cannon:
	FourWayCannon();
	
	// Take Damage:
	TakeDamage();
	
	// Die:
	Die();
	
	// [SONIC AND SHADOW ONLY] Transform:
	Transform();
	
	// Zipline:
	Zipline();
	
	// Auto Tunnel:
	AutoTunnel();
}