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
	
	// Spindash:
	Spindash();
}