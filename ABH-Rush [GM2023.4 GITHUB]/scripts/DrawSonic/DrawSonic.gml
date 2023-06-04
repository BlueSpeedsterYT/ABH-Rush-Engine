// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawSonic(){
if speedX == 0 && (actionCurrent <= PlayerActionNormal) && ground
    animAngle = 0
else if (animAngle != 0 && actionCurrent == PlayerActionNormal && !ground)
{
    if animAngle mod 360 < 180   
        animAngle -= 7;
    else if animAngle mod 360 > 180
        animAngle += 7;
    else if animAngle == 180
    {
        if animDir == 1
            animAngle += 10;
        else
            animAngle -= 10;
    }
    if animAngle mod 360 < 10
        animAngle = 0;
}
else if ground && collision_line(x,y,x,y+20,parWaterSurface,true,true) //if running on water then angle is 0
{
    animAngle = 0;
}
else
    animAngle = angle;

//if on the jump panel then set the angle according to jump panel's angle
//if actionCurrent == PlayerActionPanelLand
    //animAngle = instance_nearest(x,y,parJumpPanel).image_angle
    
//if took damage then make invincible effect
if damageEffect > 0 && damageEffect mod 2 == 0 && actionCurrent != PlayerActionDamage
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
// Idle
if(speedX == 0 && ground) && actionCurrent == PlayerActionNormal{
	animSprite = sprSonicIdle;
	animFrame += 0.20;
	actionLast = PlayerActionNormal;
}

// Duck
if actionCurrent == PlayerActionLookDown
{
    animSprite = sprSonicDuck;

    if keyDown && animIndex == 3
        animFrame = 0 
    else animFrame += 0.5
}
// Look Up
if actionCurrent == PlayerActionLookUp
{
    animSprite = sprSonicLookUp;
    
    if keyUp && animIndex == 2
        animFrame = 0
    else animFrame += 0.25       
}

//walking running and spriting
if (speedX != 0 && ground) && actionCurrent == PlayerActionNormal
{
    if actionLast == PlayerActionNormal {
        animIndex = 0;
    }
    actionLast = PlayerActionJump;
    
        
    if abs(speedX) < 3
    {
        animSprite = sprSonicWalk;
        animFrame += 1/max(6-(abs(speedX)),1);
    }
    else if abs(speedX) >= 3 && abs(speedX) < 6
    {
        animSprite = sprSonicJog;
        animFrame += 1/max(8-(abs(speedX)),1);
    }
    else if abs(speedX) >= 6 && abs(speedX) < 8
    {
        animSprite = sprSonicRunSlow;
        animFrame += 1/max(10-(abs(speedX)),1);
    }
    else if abs(speedX) >= 8 && abs(speedX) < 11
    {
        animSprite = sprSonicRunFast;
        animFrame += 1/max(12-(abs(speedX)),1);
    }
    else if abs(speedX) >= 11
    {
        animSprite = sprSonicSprint;
        animFrame += 1/max(13.5-(abs(speedX)),1.1);
    }
    if animIndex >= 8
        animIndex = 0
}
else if !ground && actionCurrent == PlayerActionNormal
{
    if speedY < -1
    {
        animSprite = sprSonicJump;
        animFrame += 0.25
    }
    else if speedY < 0 && speedY >= -1
    {
        if animSprite != sprSonicJumpMid
            animIndex = 0
        animSprite = sprSonicJumpMid;
        animFrame += 0.25 
    }
    else if speedY < 1 && speedY >= 0
    {
        if animSprite != sprSonicJumpEnd
            animIndex = 0
        animSprite = sprSonicJumpEnd;
        animFrame += 0.25 
    }
    else
    {
        if animSprite != sprSonicFall
            animIndex = 0
        animSprite = sprSonicFall
        animFrame += 0.25
    }
}
//skidding

if actionCurrent == PlayerActionSkid
{
    if animSprite != sprSonicBreakLow && animSprite != sprSonicBreakHigh
    {
        if abs(speedX) > 7
            animSprite = sprSonicBreakHigh;
        else if abs(speedX) <= 7
            animSprite = sprSonicBreakLow;
    }
    
    if animSprite == sprSonicBreakLow
    {
        if animIndex >= 3
            animIndex = 1;
    }
    else if animSprite == sprSonicBreakHigh
    {
        if animIndex >= 6
            animIndex = 3;
    }
    animFrame += 0.35;
}

// Landing
if actionCurrent == PlayerActionJump && speedY > 0 && (collision_line(x,y,x,y+80,parWalls,true,true) || speedY > 9)
{
    if animSprite != sprSonicLand {
        animIndex = 0;
	}
	animSprite = sprSonicLand;
    if animIndex >= 4 {
        animIndex = 1;
	}
	animFrame += 0.25;
}
// Roll (This uses the Advance sprite instead of the one used in ABH-Rush GMS1, it can be swapped back if you know how.)
else if(actionCurrent == PlayerActionJump || actionCurrent == PlayerActionRoll || actionCurrent == PlayerActionAutoroll || actionCurrent == PlayerActionRollCorkscrew){
	animFrame += 0.25;
	animSprite = sprSonicSpinAdvance;
}

// Anim Speed for Landing
if(animSprite == sprSonicLand){
	animFrame += 0.25;
}

// Spin Dash Charging
if actionCurrent == PlayerActionSpinCharge {
	dustIndex += 0.5; // Dust Sprite Speed
	animSprite = sprSonicSpinCharge;
	animFrame += 0.5;
	if animIndex == 3 || animIndex == 7
        animIndex = 0;
    if keyJump
        animIndex = 4;
}

if actionCurrent == PlayerActionSpring //springjump
{
    if animSprite == sprSonicJump || animSprite == sprSonicWallJump
    {
        animFrame += 0.25;
        if speedY >= -4 
            actionCurrent = PlayerActionNormal;
    }
    if animSprite == sprSonicCorkscrew
    {
        if animIndex <= 10
            animFrame += 0.25;
        else
            actionCurrent = PlayerActionNormal; 
    }   
}


// Dash Ring
if actionCurrent == PlayerActionDashRing
{
    animSprite = sprSonicWallJump;
    animFrame += 0.25;
}

// Sliding
if actionCurrent == PlayerActionSlide && (animSprite == sprSonicFall || animSprite == sprSonicSpinAdvance || animSprite == sprSonicWalk || animSprite == sprSonicJog || animSprite == sprSonicRunSlow || animSprite == sprSonicRunFast || animSprite == sprSonicSprint)
{   
    animIndex = 0;
    animSprite = sprSonicSlideStart;
}
if actionCurrent == PlayerActionSlide && animSprite == sprSonicSlideStart
    animFrame += 0.5;
    
if actionCurrent == PlayerActionSlide && animSprite == sprSonicSlideStart && animIndex >= 3
    animSprite = sprSonicSlide;
    
if actionCurrent == PlayerActionSlide && animSprite == sprSonicSlide
    animFrame += 1/max(7-(abs(speedX)),1);

// Corkscrew
AnimSetSprite(PlayerActionCorkscrew, sprSonicCorkscrew);

// Stomp
AnimSetSimple(PlayerActionStomp, sprSonicStomp, 0.5);

}