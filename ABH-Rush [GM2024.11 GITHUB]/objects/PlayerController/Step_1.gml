/// @description Player Input
//assigning input buttons
keyDown = keyboard_check(vk_down) || gamepad_button_check(0,gp_padd);
keyUp = keyboard_check(vk_up) || gamepad_button_check(0,gp_padu);
keyRight = keyboard_check(vk_right) || gamepad_button_check(0,gp_padr);
keyLeft = keyboard_check(vk_left)  || gamepad_button_check(0,gp_padl);
keyJump = keyboard_check_pressed(ord("S"))  || gamepad_button_check_pressed(0,gp_face1);
keyJumpReleased = keyboard_check_released(ord("S")) || gamepad_button_check_released(0,gp_face1);
keyAttack = keyboard_check(ord("D")) || gamepad_button_check(0,gp_face2);
keyAttackPressed = keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0,gp_face2);
keyBoost = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0,gp_face3);
keyBoostReleased = keyboard_check_released(ord("A")) || gamepad_button_check_released(0,gp_face3);
keySpecial = keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0,gp_face4);

//begin position values for boost sprite direction
x_begin = x;
y_begin = y;