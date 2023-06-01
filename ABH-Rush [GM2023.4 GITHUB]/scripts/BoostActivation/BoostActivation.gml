// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BoostActivation(){

//boost control part
if keyBoost
    isBoosting = true
if keyBoostReleased
    isBoosting = false

if isBoosting && (((actionCurrent == PlayerActionNormal || actionCurrent == PlayerActionGrind) && ground) || actionCurrent == PlayerActionJump || actionCurrent == PlayerActionCorkscrew)
{
    if !instance_exists(fxBoost) && boostAmount > 0
    {
        instance_create_depth(x,y,0,fxBoost)   
    }  
}

}