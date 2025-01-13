// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function JumpLand(){
//jumping
if keyJump && ground && (actionCurrent == PlayerActionSkid || actionCurrent == PlayerActionNormal || actionCurrent == PlayerActionRoll || actionCurrent == PlayerActionSlide || actionCurrent == PlayerActionGrind)
{
    ground = false;
    speedY = acos*speedJump + (-asin*speedX)/1.5;
    speedX = speedX*acos + asin*speedJump;
    angle = 0;
    acos = 1;
    asin = 0;
    actionCurrent = PlayerActionJump;
    
    //if !instance_exists(fxJump) && character != PlayerTails
        //instance_create_depth(x,y,depth-1,fxJump)
    
    //audio_play_sound(sndJump,1,false);
}
//small jump
if keyJumpReleased && speedY < speedLowJump && actionCurrent == PlayerActionJump
{
    speedY = speedLowJump;
}

if actionCurrent == PlayerActionJump && !ground
{
    if keyRight
        {
            if speedX >=0 
            {
                if speedX< speedCurrentX 
                    speedX+=accel/2
            } 
            else 
                speedX+=decel/2;
        }
        if keyLeft
        {
            if speedX<=0 
            {
                if speedX > -speedCurrentX 
                    speedX-=accel/2
            }         
            else 
                speedX-=decel/2;
        }
        if !keyRight && !keyLeft
        {
            if speedX > 0 
                speedX -= fric; 
            if speedX < 0 
                speedX += fric;
            if speedX <= fric && speedX >= -fric 
                speedX = 0;
        }
}

//landing
if allowMovement && (actionCurrent != PlayerActionNormal) && actionCurrent > PlayerActionLookDown && actionCurrent != PlayerActionRoll && actionCurrent != PlayerActionCorkscrew && actionCurrent != PlayerActionRollCorkscrew && actionCurrent != PlayerActionDashPad && actionCurrent != PlayerActionSlide && actionCurrent != PlayerActionDamage && actionCurrent != PlayerActionDead && actionCurrent != PlayerActionAutoroll && ground && collision_line(x,y,x+20*asin,y+20*acos,parWalls,true,true) // (actionCurrent == PlayerActionNormal && (sprite_index == sprSonicFall || sprite_index == sprShadowJump) && speedY > 1)
{    
    //if collision_line(x,y,x,y+20,obj_glass_wall,true,true)
    //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_glass,true,true) && characterLayer == 0) 
    //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_glass,true,true) && characterLayer == 1)
    //    audio_play_sound(snd_land_glass,1,0)
        
    //else if collision_line(x,y,x,y+20,obj_grass_wall,true,true)
    //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_grass,true,true) && characterLayer == 0) 
    //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_grass,true,true) && characterLayer == 1)
    //    audio_play_sound(snd_land_grass,1,0)
        
    //else if collision_line(x,y,x,y+20,obj_stone_wall,true,true)
    //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_stone,true,true) && characterLayer == 0) 
    //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_stone,true,true) && characterLayer == 1)
    //    audio_play_sound(snd_land,1,0)
        
    //else if collision_line(x,y,x,y+20,obj_metal_wall,true,true)
    //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_metal,true,true) && characterLayer == 0) 
    //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_metal,true,true) && characterLayer == 1)
    //    audio_play_sound(snd_land_metal,1,0)
        
    //else if collision_line(x,y,x,y+20,obj_wood_wall,true,true)
    //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_wood,true,true) && characterLayer == 0) 
    //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_wood,true,true) && characterLayer == 1)
    //    audio_play_sound(snd_land_wood,1,0)
        
    //else if collision_line(x,y,x,y+20,obj_dirt_wall,true,true)
    //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_dirt,true,true) && characterLayer == 0) 
    //|| (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_dirt,true,true) && characterLayer == 1)
    //    audio_play_sound(snd_land_dirt,1,0)
        
    //else
    //    audio_play_sound(snd_land,1,0)

}
if ground && (actionCurrent == PlayerActionJump)
{
    actionCurrent = PlayerActionNormal;
}

}