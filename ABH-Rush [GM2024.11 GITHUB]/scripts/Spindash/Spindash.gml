// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Spindash(){

	// Spin Dash Charge
	if spindashEnergy > 0 {
		spindashEnergy = spindashEnergy-((spindashEnergy div 1)/265)
	}
	if spindashEnergy > 192 
		spindashEnergy = 192;
	if actionCurrent = PlayerActionSpinCharge && keyJump {
		spindashEnergy+=8;
	}
	if actionCurrent = PlayerActionSpinCharge && !keyDown {
		speedX = animDir*9+(animDir*floor(spindashEnergy)/8);
		actionCurrent = PlayerActionRoll; 
		spindashEnergy = 0;
	}
	if actionCurrent = PlayerActionLookDown && keyJump 
	{
	    spindashEnergy = 0;
	    actionCurrent = PlayerActionSpinCharge; 
	    image_index = 0;
	}

}