// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_xbox_controller(){
	for ( var i = gp_face1; i < gp_axisrv; i++ ) {
	    if ( gamepad_button_check( 0, i ) ) return true;
	}
	return false;
}