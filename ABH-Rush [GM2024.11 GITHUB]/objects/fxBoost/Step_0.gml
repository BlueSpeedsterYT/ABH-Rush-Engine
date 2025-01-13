/// @description Manage the Effect
if(alive)
{
	switch(Player.form)
	{
		case PlayerFormNormal:
		{
			switch(Player.character)
			{
				case PlayerSonic: sprite_index = sprBoostFXSonic; break;
				case PlayerShadow: sprite_index = sprBoostFXShadow; break;
				default: sprite_index = sprBoostFXBase; break;
			}
		}
		break;
		
		case PlayerFormSuper:
		{
			sprite_index = sprBoostFXSuper;
		}
		break;
	}
	
	Player.boostAmount -= 0.2;
	
	x = Player.x
    y = Player.y
    
    if(!Player.ground) airTime -= 1; else airTime = 240;
    
    if(image_alpha < 1) image_alpha += 0.125
    
    //if Player.actionCurrent != PlayerActionCorkscrew && Player.actionCurrent != PlayerActionRollCorkscrew
        image_angle = Player.boost_direction //point_direction(Player.x_begin,Player.y_begin,x,y);
    
    if image_angle > 90 && image_angle < 270
        image_yscale = -1
	
	if(Player.keyBoost || Player.boostAmount <= 0 || Player.keyBoostReleased
    || Player.actionCurrent == PlayerActionSwing || Player.actionCurrent == PlayerActionQTEInit || Player.actionCurrent == PlayerActionHomingNoTarget || Player.actionCurrent == PlayerActionHomingTarget
    || Player.actionCurrent == PlayerActionCannon || Player.actionCurrent == PlayerActionPanelJump || Player.actionCurrent == PlayerActionPulley 
    || Player.actionCurrent == PlayerActionPanelLand || Player.actionCurrent == PlayerActionDead || Stage.StageClear 
    || (Player.ground && Player.speedX < 2 && Player.speedX > -2) || airTime < 0 || Player.actionCurrent == PlayerActionPole 
    || Player.actionCurrent == PlayerActionBungee)
	{
        alive = false;
	}
}
else
{
	image_alpha -= 0.125;
    if(image_alpha <= 0)
	{
        instance_destroy();
	}
}