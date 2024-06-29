/// @description Insert description here
// You can write your code in this 
if (alarm_get(0) == -1) {
	alarm[0] = game_get_speed(gamespeed_fps);
}

if (other.move_y > 0) {
	other.move_y = 0;
}