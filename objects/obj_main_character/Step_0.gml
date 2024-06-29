/// @description Insert description here
// You can write your code in this editor

move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x *= move_speed;

var _tilemap = layer_tilemap_get_id("Obstacle_tiles");
var _collisions = [_tilemap, obj_shelf];

if (place_meeting(x, y+5, _collisions) || place_meeting(x, y, obj_animated_shelf))
{
	move_y = 0;
	if (keyboard_check(ord("W"))) move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;

if (move_x != 0) 
{
	sprite_index = spr_main_character_running;
}
else
{
	sprite_index = spr_main_character_standing;	
}

move_and_collide(move_x, move_y, _collisions, 4, 3, 3, move_speed, -1);
x = clamp(x, 0 + 10, room_width + 20);