// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawSonic(){
	if speedX == 0 && (actionCurrent <= PlayerActionNormal) && ground
    animAngle = 0
else if (animAngle != 0 && actionCurrent == PlayerActionNormal && !ground)
{
    if animAngle%360 < 180   
        animAngle -= 7
    else if animAngle% 360 > 180
        animAngle += 7
    else if animAngle == 180
    {
        if animDir == 1
            animAngle += 10
        else
            animAngle -= 10
    }
    if animAngle % 360 < 10
        animAngle = 0
}
//else if ground && collision_line(x,y,x,y+20,obj_water_surface,true,true) //if running on water then angle is 0
//{
    //animAngle = 0
//}
else
    animAngle = angle

//if on the jump panel then set the angle according to jump panel's angle
//if actionCurrent == consPlayerActionJumpPanelLand
    //animAngle = instance_nearest(x,y,obj_jumppanel_parent).image_angle
    
//if took damage then make invincible effect
if damageEffect > 0 && damageEffect % 2 == 0 && actionCurrent != PlayerActionDamage
    animAlpha = !animAlpha
else
    animAlpha = 1
	
if animIndex > 998
{
    animIndex = 0;
}
if animFrame >= 1
{
    animFrame = 0;
    animIndex += 1;
}

// Init Character Animations
AnimSet(PlayerActionNormal, sprSonicIdle, 0.20, PlayerActionNormal);

if actionCurrent == PlayerActionSpinCharge {
	dustIndex += 0.5;
}

}