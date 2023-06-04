/// @description Manage the Effect
if alive
{
	Player.boostAmount -= 0.2;
	
	if Player.keyBoost || Player.boostAmount <= 0 || Player.keyBoostReleased
    || Player.actionCurrent == PlayerActionSwing || Player.actionCurrent == PlayerActionQTEInit || Player.actionCurrent == PlayerActionHomingNoTarget || Player.actionCurrent == PlayerActionHomingTarget
    || Player.actionCurrent == PlayerActionCannon || Player.actionCurrent == PlayerActionPanelJump || Player.actionCurrent == PlayerActionPulley 
    || Player.actionCurrent == PlayerActionPanelLand || Player.actionCurrent == PlayerActionDead || Stage.StageClear 
    || (Player.ground && Player.speedX < 2 && Player.speedX > -2) || airtime < 0 || Player.actionCurrent == PlayerActionPole 
    || Player.actionCurrent == PlayerActionBungee  
        alive = false
}
else
{
	instance_destroy();
}